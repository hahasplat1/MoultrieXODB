using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using Ionic.Zip;
using JetBrains.Annotations;
using Orchard.ContentManagement;
using Orchard.FileSystems.Media;
using Orchard.Localization;
using XODB.Models;
using Orchard.Security;
using Orchard.Settings;
using Orchard.Validation;
using Orchard;
using System.DirectoryServices;
using System.DirectoryServices.ActiveDirectory;
using System.DirectoryServices.AccountManagement;
using System.Security.Principal;
using Orchard.Roles.Services;
using Orchard.Roles.Models;
using Orchard.Users.Services;
using Orchard.Users.Models;
using System.Text.RegularExpressions;
using System.Transactions;
using Orchard.Messaging.Services;
using Orchard.Logging;
using XODB.Helpers;
using Orchard.Tasks.Scheduling;
using Orchard.Data;
using Orchard.Environment.Configuration;
using Orchard.Utility.Extensions;
using System.Web.Configuration;
using HtmlAgilityPack;
using System.Net;
using System.Management;

namespace XODB.Services {
    
    [UsedImplicitly]
    public class UsersService : IUsersService {
        private readonly IOrchardServices _orchardServices;
        private readonly IContentManager _contentManager;
        private readonly IRoleService _roleService;
        private readonly IMessageManager _messageManager;
        private readonly IScheduledTaskManager _taskManager;
        private PrincipalContext _securityContext;
        private readonly ShellSettings _shellSettings;
        private PrincipalContext securityContext
        {
            get
            {
                if (_securityContext == null)
                    _securityContext = new PrincipalContext(ContextType.Domain); //TODO: May look at others one day
                return _securityContext;
            }
        }
        private readonly IRepository<EmailPartRecord> _emailRepository;
        private readonly IRepository<UserRolesPartRecord> _userRolesRepository;
        public ILogger Logger { get; set; }


        public UsersService(IContentManager contentManager, IOrchardServices orchardServices, IRoleService roleService, IMessageManager messageManager, IScheduledTaskManager taskManager, IRepository<EmailPartRecord> emailRepository, ShellSettings shellSettings, IRepository<UserRolesPartRecord> userRolesRepository ) 
        {
            _emailRepository = emailRepository;
            _orchardServices = orchardServices;
            _contentManager = contentManager;
            _roleService = roleService;
            _messageManager = messageManager;
            _taskManager = taskManager;
            _shellSettings = shellSettings;
            _userRolesRepository = userRolesRepository;
            T = NullLocalizer.Instance;
            Logger = NullLogger.Instance;
        }

        public Localizer T { get; set; }

        private System.Web.Configuration.AuthenticationMode? authenticationMode = null;
        public System.Web.Configuration.AuthenticationMode AuthenticationMode
        {
            get 
            {
                if (authenticationMode == null)
                {
                    var configuration = WebConfigurationManager.OpenWebConfiguration("/");
                    authenticationMode = ((AuthenticationSection)configuration.GetSection("system.web/authentication")).Mode;
                }
                return authenticationMode.Value;
            }
        }

        private Guid? applicationID = null;
        public Guid ApplicationID
        {
            get
            {
                if (applicationID == null)
                {
                    using (new TransactionScope(TransactionScopeOption.Suppress))
                    {
                        var c = new ContactsDataContext();
                        applicationID = (from o in c.Applications where o.ApplicationName == _shellSettings.Name select o.ApplicationId).FirstOrDefault();
                        if (applicationID == default(Guid))
                        {
                            applicationID = Guid.NewGuid();
                            c.aspnet_Applications_CreateApplication(_shellSettings.Name, ref applicationID);
                        }
                    }
                }
                return applicationID.Value;
            }
        }

        private Guid? serverID = null;
        public Guid ServerID
        {
            get
            {

                try
                {
                    var hostnames = new List<string>();
                    var ips = new List<string>();
                    string sid1 = "", sid2 = "", sid3 = "";
                    string domain = null;

                    try
                    {
                        domain = System.Net.NetworkInformation.IPGlobalProperties.GetIPGlobalProperties().DomainName;
                    }
                    catch { }

                    var h = Dns.GetHostName();
                    var iph = Dns.GetHostEntry(h);
                    var ip = iph.AddressList;
                    hostnames.Add(h);
                    ips.AddRange(from o in ip select o.ToString());


                    h = Environment.MachineName;
                    iph = Dns.GetHostEntry(h);
                    ip = iph.AddressList;
                    hostnames.Add(h);
                    ips.AddRange(from o in ip select o.ToString());


                    var i = _orchardServices.WorkContext.CurrentSite.BaseUrl;
                    h = i.Substring(i.LastIndexOf('/')+1, i.Length - i.LastIndexOf('/')-1);
                    hostnames.Add(h);
                    try
                    {
                        iph = Dns.GetHostEntry(h);
                        ip = iph.AddressList;
                        ips.AddRange(from o in ip select o.ToString());
                    }
                    catch { }

                    try
                    {
                        //Public IP
                        var check = "http://checkip.dyndns.org";
                        var p = WebRequest.GetSystemWebProxy();
                        var c = new WebClient();
                        c.Headers.Add("user-agent", "Lynx/2.8.8dev.3 libwww-FM/2.14 SSL-MM/1.4.1");
                        c.Proxy = p;
                        c.Credentials = CredentialCache.DefaultNetworkCredentials;
                        var d = c.OpenRead(check);
                        //HtmlWeb web = new HtmlWeb();
                        HtmlDocument doc = new HtmlDocument(); //web.Load(, "GET", , );
                        doc.Load(d);
                        var n = doc.DocumentNode.SelectSingleNode("/html/body");
                        var pub = n.InnerText.Trim();
                        pub = pub.Substring(pub.LastIndexOf(' ') + 1, pub.Length - pub.LastIndexOf(' ') - 1);
                        ips.Add(pub);
                    }
                    catch { }

                    try
                    {
                        sid1 = new SecurityIdentifier((byte[])new DirectoryEntry(string.Format("WinNT://{0},Computer", Environment.MachineName)).Children.Cast<DirectoryEntry>().First().InvokeGet("objectSID"), 0).AccountDomainSid.Value;
                    }
                    catch { }

                    try
                    {
                        //using (var mo = new ManagementObject(String.Format("Win32_UserAccount.Name='{0}',Domain='{1}'", "administrator", Environment.MachineName)))
                        //{
                        //    mo.Get();
                        //    sid2 = mo["SID"].ToString();
                        //    sid2 = sid2.Substring(0, sid2.Length - 4);
                        //}

                        byte[] domainSid;

                        var directoryContext = new DirectoryContext(DirectoryContextType.Domain, domain);

                        using (var dom = Domain.GetDomain(directoryContext))
                        using (var directoryEntry = dom.GetDirectoryEntry())
                            domainSid = (byte[])directoryEntry.Properties["objectSid"].Value;
                        sid2 = new SecurityIdentifier(domainSid, 0).AccountDomainSid.Value;
                    }
                    catch { }


                    try
                    {
                        var cpus = new List<string>();
                        foreach (ManagementObject mo in new ManagementClass("win32_processor").GetInstances())
                        {
                            cpus.Add(mo.Properties["processorID"].Value.ToString());
                        }
                        sid3 = cpus.OrderBy(f => f).ToArray().FlattenStringArray();
                    }
                    catch { }

                    var servers = from xip in ips
                                  from xh in hostnames 
                                  select new {domain, ip=xip,host=xh,sid1,sid2,sid3};

                    var ss = (from o in servers.Distinct() select new {newid=Guid.NewGuid(),o.domain,o.ip,o.host,o.sid1,o.sid2,o.sid3}).ToArray();

                    using (new TransactionScope(TransactionScopeOption.Suppress))
                    {
                        var sw = new SoftwareDataContext();
                        //Update all server info
                        //Existing
                        var sos = (from o in sw.Servers
                                      where 
                                      o.Domain==domain 
                                      && o.ServerUniqueMachineCode1==sid1 
                                      && o.ServerUniqueMachineCode2==sid2 
                                      && o.ServerUniqueMachineCode3==sid3
                                      select o).ToArray();
                        var os = (from o in sos
                                  from s in ss 
                                      where 
                                      o.Domain==s.domain 
                                      && o.IP==s.ip 
                                      && o.Hostname==s.host 
                                      && o.ServerUniqueMachineCode1==s.sid1 
                                      && o.ServerUniqueMachineCode2==s.sid2 
                                      && o.ServerUniqueMachineCode3==s.sid3
                                      select new {s.newid,o.ServerID});
                        //New
                        var ns = from x in ss where !(from o in os select o.newid).Contains(x.newid) select x;
                        //insert
                        foreach (var s in ns)
                        {
                            var xs = new Server();
                            xs.ServerID = s.newid;
                            xs.Domain = s.domain;
                            xs.Hostname = s.host;
                            xs.IP = s.ip;
                            xs.ServerUniqueMachineCode1 = s.sid1;
                            xs.ServerUniqueMachineCode2 = s.sid2;
                            xs.ServerUniqueMachineCode3 = s.sid3;
                            sw.Servers.InsertOnSubmit(xs);
                        }
                        sw.SubmitChanges();
                        
                        //Update ServerApplication
                        //Merge new and existing
                        var sa = (from xsa in (from o in os select o.ServerID).Union(from o in ns select o.newid) select new {ServerID = xsa, ApplicationID }).Distinct();
                        var sai = (from o in sa select new { newid = Guid.NewGuid(), o.ServerID, o.ApplicationID }).ToArray();
                        //old
                        var osas = (from o in sw.ServerApplications                                   
                                   where o.ApplicationID == ApplicationID 
                                   select o).ToArray();

                        
                        var osa = (from o in osas
                                   from s in sai
                                   where o.ApplicationID == s.ApplicationID && o.ServerID == s.ServerID
                                   select new { o.ServerApplicationID, s.newid });
                        //new
                        var nsa = from x in sai where !(from o in osa select o.newid).Contains(x.newid) select x;
                        //insert
                        foreach (var s in nsa)
                        {
                            var xs = new ServerApplication();
                            xs.ServerApplicationID = s.newid;
                            xs.ServerID = xs.ServerID;
                            xs.ApplicationID = xs.ApplicationID;
                            sw.ServerApplications.InsertOnSubmit(xs);
                        }
                        sw.SubmitChanges();
                        
                        //Choose 1
                        var xsid = (from o in sw.ServerApplications
                                   from x in sw.Servers
                                   where o.ServerID==x.ServerID && o.ApplicationID==ApplicationID
                                   select x).ToArray();
                        serverID = (from o in xsid orderby NetworkHelper.IsLocal(o.IP), o.IP descending select o.ServerID).FirstOrDefault();                                                                 
                    }

                }
                catch (Exception ex)
                {
                    Logger.Information("Could not update server fingerprint. Corresponding licenses may fail.");
                }
                return serverID.Value;

            }
        }

        public void SyncUsers()
        {

            //Get Orchard Users & Roles
            var orchardUsers = _contentManager.Query<UserPart, UserPartRecord>().List();
            var orchardRoles = _roleService.GetRoles().ToArray();
            var orchardUserRoles = _userRolesRepository.Table.ToArray();
            //Get Authmode & Then Update
            if (AuthenticationMode == System.Web.Configuration.AuthenticationMode.Forms)
            {
                using (new TransactionScope(TransactionScopeOption.Suppress))
                {
                    var c = new ContactsDataContext();
                    var r = (from o in c.Roles where o.ApplicationId == ApplicationID select o).ToArray();
                    var u = (from o in c.Users where o.ApplicationId == ApplicationID select o).ToArray();
                    var ur = (from o in c.UsersInRoles where (from or in r select or.RoleId).Contains(o.RoleId) select o).ToArray();
                    
                    //TODO: Update....
                    var nu = (from o in orchardUsers where !(from ou in u select ou.UserName).Contains(o.UserName) select o);
                    var x = ServerID;
                }

            }
            else if (AuthenticationMode == System.Web.Configuration.AuthenticationMode.Windows)
            {
                //Module syncs only users - only all admin for now

                //Get AD Users
                // throw new NotImplementedException();
                // get a DirectorySearcher object
                DirectorySearcher search = new DirectorySearcher();

                // specify the search filter
                search.Filter = "(&(objectCategory=person)(objectClass=user))";
                //search.Filter = "(&(objectClass=user)(anr=agrosser))"; //TEST

                //// specify which property values to return in the search
                search.PropertiesToLoad.Add("name");   // first name
                search.PropertiesToLoad.Add("givenName");   // first name
                search.PropertiesToLoad.Add("sn");          // last name
                search.PropertiesToLoad.Add("mail");        // smtp mail address
                search.PropertiesToLoad.Add("samaccountname");        // account name
                search.PropertiesToLoad.Add("memberof");        // groups
                search.PropertiesToLoad.Add("objectsid");
                search.PropertiesToLoad.Add("objectguid");
                search.PropertiesToLoad.Add("title");

                // perform the search
                SearchResultCollection results = search.FindAll(); //.FindOne();

                var sessionRoleCache = new Dictionary<string, string>();
                var adusers = from SearchResult o in results
                              select new
                                  {
                                      name = o.Properties["name"] != null && o.Properties["name"].Count > 0 ? string.Format("{0}", o.Properties["name"][0]) : null,
                                      givenName = o.Properties["givenName"] != null && o.Properties["givenName"].Count > 0 ? string.Format("{0}", o.Properties["givenName"][0]) : null,
                                      sn = o.Properties["sn"] != null && o.Properties["sn"].Count > 0 ? string.Format("{0}", o.Properties["sn"][0]) : null,
                                      email = o.Properties["mail"] != null && o.Properties["mail"].Count > 0 ? string.Format("{0}", o.Properties["mail"][0]) : null,
                                      samaccountname = o.Properties["samaccountname"] != null && o.Properties["samaccountname"].Count > 0 ? string.Format("{0}", o.Properties["samaccountname"][0]) : null,
                                      username = o.Properties["objectsid"] != null && o.Properties["objectsid"].Count > 0 ? ((NTAccount)(new SecurityIdentifier((byte[])o.Properties["objectsid"][0], 0)).Translate(typeof(NTAccount))).ToString() : null,
                                      guid = o.Properties["objectguid"] != null && o.Properties["objectguid"].Count > 0 ? new Guid((byte[])o.Properties["objectguid"][0]) : (Guid?)null,
                                      title = o.Properties["title"] != null && o.Properties["title"].Count > 0 ? string.Format("{0}", o.Properties["title"][0]) : null,
                                      roles = o.Properties["memberof"] != null ? (from string m in o.Properties["memberof"] select getNameFromFQDN(m, sessionRoleCache)).ToArray() : new string[] { }
                                  };

                //Get XODB Users
                Contact[] xodbusers;
                using (new TransactionScope(TransactionScopeOption.Suppress))
                {
                    var d = new ContactsDataContext();
                    xodbusers = (from o in d.Contacts select o).ToArray();

                    //Sync AD, Orchard, XODB
                    //New into XODB
                    //We need firstname, surname
                    var ad_new = (from o in adusers where o.givenName != null && o.sn != null && (o.guid.HasValue && !(from x in xodbusers select x.ContactID).Contains((Guid)o.guid)) || (!o.guid.HasValue && !(from x in xodbusers select x.Username.ToLowerInvariant()).Contains(o.username.ToLowerInvariant())) select o);

                    foreach (var o in ad_new)
                    {
                        Contact c = new Contact();
                        c.ContactID = o.guid.HasValue ? o.guid.Value : Guid.NewGuid();
                        c.Username = o.username;
                        c.Firstname = o.givenName;
                        c.ContactName = string.Join(string.Empty, string.Format("{0} [{1}]", o.name, o.username).Take(120));
                        c.Surname = o.sn;
                        c.DefaultEmail = o.email;
                        d.Contacts.InsertOnSubmit(c);
                    }

                    //Updates into XODB
                    var ad_diff = from o in adusers
                                  from x in xodbusers
                                  where ((o.guid.HasValue && o.guid.Value == x.ContactID) || (o.username != null && x.Username != null && o.username.ToLowerInvariant() == x.Username.ToLowerInvariant()))
                                      //Things to update
                                          && (
                                          o.givenName != x.Firstname
                                          || o.sn != x.Surname
                                          || o.email != x.DefaultEmail
                                          || o.name != x.ContactName
                                  )
                                  select new { x.ContactID, o.givenName, o.sn, o.email, o.name, o.username };
                    foreach (var o in ad_diff)
                    {
                        var c = xodbusers.First(x => x.ContactID == o.ContactID);
                        c.Firstname = o.givenName;
                        c.ContactName = string.Join(string.Empty, string.Format("{0} [{1}]", o.name, o.username).Take(120));
                        c.Surname = o.sn;
                        c.DefaultEmail = o.email;
                    }
                    d.SubmitChanges();

                }
            }


        }

        public IEnumerable<Contact> GetContacts()
        {
            using (new TransactionScope(TransactionScopeOption.Suppress))
            {
                var dataContext = new ContactsDataContext();
                return dataContext.Contacts.OrderBy(x=>x.ContactName).ToArray();
            }
        }

        public string[] GetUserEmails(Guid[] users)
        {
            if (users == null || users.Length == 0)
                return new string[] { };
            using (new TransactionScope(TransactionScopeOption.Suppress))
            {
                var d = new ContactsDataContext();
                var o = from c in d.Contacts where users.Contains(c.ContactID) && c.DefaultEmail != null
                        select c.DefaultEmail;
                return o.ToArray();
            }
        }

        public Guid GetUserID(string username)
        {
            using (new TransactionScope(TransactionScopeOption.Suppress))
            {
                var d = new ContactsDataContext();
                return d.Contacts.Where(x=>x.Username == username).Select(x=>x.ContactID).FirstOrDefault();
            }
        }

        private string getNameFromFQDN(string fqdn, Dictionary<string,string> cache)
        {
            string temp;
            if (cache != null && cache.TryGetValue(fqdn, out temp))
                return temp;
            try
            {
                temp = ((NTAccount)(GroupPrincipal.FindByIdentity(securityContext, string.Format("{0}", fqdn)).Sid).Translate(typeof(NTAccount))).ToString();
            }
            catch
            {
                temp = null;
            }
            cache.Add(fqdn, temp);
            return temp;
        }

        public void EmailUsers(string[] emails, string subject, string body, bool retry = false)
        {
            var data = new Dictionary<string,string>();
            data.Add("Subject", subject); 
            data.Add("Body", body);
            Orchard.Email.Models.SmtpSettingsPart smtpSettings = null;
            if (_orchardServices.WorkContext != null) smtpSettings = _orchardServices.WorkContext.CurrentSite.As<Orchard.Email.Models.SmtpSettingsPart>();
            try
            {
                if (emails == null)
                    emails = new string[] { };
                var recipients = emails.Union(new string[] { smtpSettings.Address }).Where(f => !string.IsNullOrEmpty(f)).ToArray();
                _messageManager.Send(recipients, XODB.Events.EmailMessageHandler.DEFAULT_XODB_EMAIL_TYPE, "email", data);
            }
            catch
            {
                if (retry)
                {
                    EmailUsersAsync(emails, subject, body);
                }
            }
            finally
            {
                Logger.Information(string.Format("Attempted sending notification for: {0}.\r\n\r\n Regarding: \r\n\r\n {1}\n\nRetry:{2}", subject, body, retry));
            }
        }

        public void EmailUsersAsync(string[] emails, string subject, string body)
        {
            try
            {
                var em = _contentManager.New<EmailPart>("Email");
                em.Recipients = emails.FlattenStringArray();
                em.Subject = subject;
                em.Body = body;
                em.Retry = false;
                em.Processed = DateTime.UtcNow;
                _contentManager.Create(em, VersionOptions.Published);
                _taskManager.EmailAsync(em.ContentItem);
            }
            catch (Exception ex)
            {
                Logger.Debug(ex, string.Format("Failed Sending Notification - Couldn't assemble message.\n\nSubject:\n{0}\n\nBody:\n{1}\n\nRecipients:\n{2}\n\n", subject, body, emails == null ? "Unknown Recipients" : string.Join(";", emails)));
            }
        }

    }
}
