//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using DevExpress.Xpo;
using DevExpress.Data.Filtering;
namespace XODB.Module.BusinessObjects.XODB
{

    [Persistent(@"X_DictionaryDefectType")]
    public partial class DictionaryDefectType : XPLiteObject
    {
        Guid fDefectTypeID;
        [Key(true)]
        public Guid DefectTypeID
        {
            get { return fDefectTypeID; }
            set { SetPropertyValue<Guid>("DefectTypeID", ref fDefectTypeID, value); }
        }
        string fStandardDefectTypeName;
        [Indexed(Name = @"IDictionaryDefectType", Unique = true)]
        [Size(16)]
        public string StandardDefectTypeName
        {
            get { return fStandardDefectTypeName; }
            set { SetPropertyValue<string>("StandardDefectTypeName", ref fStandardDefectTypeName, value); }
        }
        string fCoalDefectTypeName;
        [Size(16)]
        public string CoalDefectTypeName
        {
            get { return fCoalDefectTypeName; }
            set { SetPropertyValue<string>("CoalDefectTypeName", ref fCoalDefectTypeName, value); }
        }
        string fGoldDefectTypeName;
        [Size(16)]
        public string GoldDefectTypeName
        {
            get { return fGoldDefectTypeName; }
            set { SetPropertyValue<string>("GoldDefectTypeName", ref fGoldDefectTypeName, value); }
        }
        string fCustomDefectTypeName;
        [Size(16)]
        public string CustomDefectTypeName
        {
            get { return fCustomDefectTypeName; }
            set { SetPropertyValue<string>("CustomDefectTypeName", ref fCustomDefectTypeName, value); }
        }
        string fDescription;
        [Size(255)]
        public string Description
        {
            get { return fDescription; }
            set { SetPropertyValue<string>("Description", ref fDescription, value); }
        }
        [Association(@"DefectReferencesDictionaryDefectType", typeof(Defect))]
        public XPCollection<Defect> Defects { get { return GetCollection<Defect>("Defects"); } }
        [Association(@"LithologyReferencesDictionaryDefectType", typeof(Lithology))]
        public XPCollection<Lithology> Lithologys { get { return GetCollection<Lithology>("Lithologys"); } }
    }

}