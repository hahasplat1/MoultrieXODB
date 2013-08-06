using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using XODB.Helpers;
    
namespace XODB.Models
{
    public partial class ContactsContainer : DbContext
    {
        public ContactsContainer(string providerConnectionString)
            : base("name=ContactsContainer")
            //base(new System.Data.SqlClient.SqlConnection(providerConnectionString), true)
        {
            this.Configuration.LazyLoadingEnabled = false;
        }
    }
}