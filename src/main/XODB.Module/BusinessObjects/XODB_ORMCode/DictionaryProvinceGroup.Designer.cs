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

    [Persistent(@"X_DictionaryProvinceGroup")]
    public partial class DictionaryProvinceGroup : XPLiteObject
    {
        Guid fProvinceGroupID;
        [Key(true)]
        public Guid ProvinceGroupID
        {
            get { return fProvinceGroupID; }
            set { SetPropertyValue<Guid>("ProvinceGroupID", ref fProvinceGroupID, value); }
        }
        string fStandardProvinceGroupName;
        [Indexed(Name = @"IDictionaryProvinceGroup", Unique = true)]
        [Size(50)]
        public string StandardProvinceGroupName
        {
            get { return fStandardProvinceGroupName; }
            set { SetPropertyValue<string>("StandardProvinceGroupName", ref fStandardProvinceGroupName, value); }
        }
        string fCoalProvinceGroupName;
        [Size(50)]
        public string CoalProvinceGroupName
        {
            get { return fCoalProvinceGroupName; }
            set { SetPropertyValue<string>("CoalProvinceGroupName", ref fCoalProvinceGroupName, value); }
        }
        string fGoldProvinceGroupName;
        [Size(50)]
        public string GoldProvinceGroupName
        {
            get { return fGoldProvinceGroupName; }
            set { SetPropertyValue<string>("GoldProvinceGroupName", ref fGoldProvinceGroupName, value); }
        }
        string fCustomProvinceGroupName;
        [Size(50)]
        public string CustomProvinceGroupName
        {
            get { return fCustomProvinceGroupName; }
            set { SetPropertyValue<string>("CustomProvinceGroupName", ref fCustomProvinceGroupName, value); }
        }
        DictionaryProvinceType fParentProvinceTypeID;
        [Association(@"DictionaryProvinceGroupReferencesDictionaryProvinceType")]
        public DictionaryProvinceType ParentProvinceTypeID
        {
            get { return fParentProvinceTypeID; }
            set { SetPropertyValue<DictionaryProvinceType>("ParentProvinceTypeID", ref fParentProvinceTypeID, value); }
        }
        string fDescription;
        [Size(255)]
        public string Description
        {
            get { return fDescription; }
            set { SetPropertyValue<string>("Description", ref fDescription, value); }
        }
        [Association(@"ProvinceReferencesDictionaryProvinceGroup", typeof(Province))]
        public XPCollection<Province> Provinces { get { return GetCollection<Province>("Provinces"); } }
    }

}