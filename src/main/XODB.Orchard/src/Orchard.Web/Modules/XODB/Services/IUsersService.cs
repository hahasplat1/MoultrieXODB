using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using Orchard;
using XODB.Models;
using System.ServiceModel;

namespace XODB.Services
{
     [ServiceContract]
    public interface IUsersService : IDependency 
    {
         [OperationContract]
         void SyncUsers();

         [OperationContract]
         IEnumerable<Contact> GetContacts();

         [OperationContract]
         Dictionary<Guid, string> GetCompanies();

         [OperationContract]
         Dictionary<Guid, string> GetRoles();

         [OperationContract]
         Guid? GetContactID(string username);

         [OperationContract]
         string[] GetUserEmails(Guid[] users);

         [OperationContract]
         void EmailUsers(string[] recipients, string subject, string body, bool retry=false);

         [OperationContract]
         void EmailUsersAsync(string[] recipients, string subject, string body);

         [OperationContract]
         void UpdateSecurity(ISecured security);

         [OperationContract]
         void DeleteSecurity(ISecured security);

         string ApplicationConnectionString
         {
             [OperationContract]
             get;
         }

         List<SecurityWhitelist> AuthorisedList
         {
             [OperationContract]
             get;
         }

         bool CheckPermission(ISecured secured, ActionPermission permission);

         bool CheckOwnership(ISecured secured, ActionPermission permission);

         Guid? ContactID
         {
             [OperationContract]
             get;
         }

         Guid ApplicationID
         {
             [OperationContract]
             get;
         }

         Guid CompanyID
         {
             [OperationContract]
             get;
         }
    }
}