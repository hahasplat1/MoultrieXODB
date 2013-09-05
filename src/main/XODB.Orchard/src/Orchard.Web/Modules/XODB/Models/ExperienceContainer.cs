using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using XODB.Helpers;
    
namespace XODB.Models
{
    public partial class ExperienceContainer : DbContext
    {
        public ExperienceContainer(string providerConnectionString)
            : base(DBHelper.GetEnityConnectionString(providerConnectionString, "Experience"))
        {
            this.Configuration.LazyLoadingEnabled = false; //Explicit queries only
        }
    }
}