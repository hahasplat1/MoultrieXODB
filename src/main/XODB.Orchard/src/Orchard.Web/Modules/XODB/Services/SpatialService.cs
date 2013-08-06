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
using Orchard.Caching;
using Orchard.Services;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;


namespace XODB.Services {
    
    [UsedImplicitly]
    public class SpatialService : ISpatialService, IAuthority
    {
        private readonly IOrchardServices _orchardServices;
        private readonly IContentManager _contentManager;
        private readonly IRoleService _roleService;
        private readonly IMessageManager _messageManager;
        private readonly IScheduledTaskManager _taskManager;
        private PrincipalContext _securityContext;
        private readonly ShellSettings _shellSettings;
        private readonly ISignals _signals;
        private readonly IClock _clock;
        private readonly ICacheManager _cache;
        private readonly IRepository<EmailPartRecord> _emailRepository;
        private readonly IRepository<UserRolesPartRecord> _userRolesRepository;
        public ILogger Logger { get; set; }
        public Localizer T { get; set; }

        public SpatialService(
            IContentManager contentManager, 
            IOrchardServices orchardServices, 
            IRoleService roleService, 
            IMessageManager messageManager, 
            IScheduledTaskManager taskManager, 
            IRepository<EmailPartRecord> emailRepository, 
            ShellSettings shellSettings, 
            IRepository<UserRolesPartRecord> userRolesRepository, 
            ICacheManager cache, 
            IClock clock, 
            ISignals signals) 
        {
            _signals = signals;
            _clock = clock;
            _cache = cache;
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
              

        public void TestSpatial()
        {
           
            using (new TransactionScope(TransactionScopeOption.Suppress))
            {
                using (var context = new SpatialContainer())
                {
                    var s = (from o in context.Locations select o).FirstOrDefault();
                    
                    //context.Universities.Add(new University()
                    //{
                    //    Name = "Graphic Design Institute",
                    //    Location = DbGeography.FromText("POINT(-122.336106 47.605049)"),
                    //});
                    //context.SaveChanges();

                    //var myLocation = DbGeography.FromText("POINT(-122.296623 47.640405)");

                    //var university = (from u in context.Universities
                    //                  orderby u.Location.Distance(myLocation)
                    //                  select u).FirstOrDefault();

                }
                throw new NotImplementedException();
            }
        }      

        public bool IsAuthorised(bool checkLicense,
          Authority.ActionType action,
          string dataType,
          string tableType,
          string field,
          Guid? referenceID,
          Guid? applicationID,
          Guid? licenseID, //Chcek license elsewhere too in binary form, optional implementation for 3rd party modules
          Guid? assetID,
          Guid? modelID,
          Guid? partID,
          Guid? companyID,
          Guid? contactID,
          Guid? projectID,
          Guid? roleID)
        {
            throw new NotImplementedException();   
        }

        
       
    }
}
