using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DevExpress.Persistent.Base;
using System.IO;
using DevExpress.Xpo;
using DevExpress.Xpo.Metadata;
using Microsoft.SqlServer.Types;
using System.Data.Spatial;
using System.ComponentModel.DataAnnotations.Schema;
using DevExpress.ExpressApp.ConditionalAppearance;
using DevExpress.ExpressApp.Editors;

namespace XODB.Module.BusinessObjects
{

    public class GeospatialValueConverter : ValueConverter
    {

        public override Type StorageType { get { return typeof(byte[]); } }
        public override object ConvertToStorageType(object value)
        {
            throw new NotImplementedException();
        }
        public override object ConvertFromStorageType(object value)
        {
            throw new NotImplementedException();
        }
    }

    public partial class Location 
    {        
        string _coordinates;
        [NotMapped]
        [Size(SizeAttribute.Unlimited)]
        [ValueConverter(typeof(GeospatialValueConverter))]
        [NonPersistent()]
        //[Appearance()]
        public string Coordinates
        {
            get { return _LocationGeography.AsText(); }
            set { LocationGeography = DbGeography.FromText(value); }
        }
         
    }
    
    
}
