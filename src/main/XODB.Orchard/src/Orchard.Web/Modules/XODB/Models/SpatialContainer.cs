using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using XODB.Helpers;
    
namespace XODB.Models
{
    public partial class SpatialContainer : DbContext
    {
        public SpatialContainer(string providerConnectionString)
            : //base("name=SpatialContainer")
              //base(new System.Data.SqlClient.SqlConnection(providerConnectionString), true)
              base(DBHelper.GetEnityConnectionString(providerConnectionString, "Spatial"))
        {
            this.Configuration.LazyLoadingEnabled = false; //Explicit queries only
        }
    }
}