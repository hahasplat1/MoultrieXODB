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

    [Persistent(@"X_DictionaryHorizon")]
    public partial class DictionaryHorizon : XPLiteObject
    {
        Guid fHorizonID;
        [Key(true)]
        public Guid HorizonID
        {
            get { return fHorizonID; }
            set { SetPropertyValue<Guid>("HorizonID", ref fHorizonID, value); }
        }
        string fStandardHorizonName;
        [Indexed(Name = @"IDictionaryHorizon", Unique = true)]
        [Size(16)]
        public string StandardHorizonName
        {
            get { return fStandardHorizonName; }
            set { SetPropertyValue<string>("StandardHorizonName", ref fStandardHorizonName, value); }
        }
        string fCoalHorizonName;
        [Size(16)]
        public string CoalHorizonName
        {
            get { return fCoalHorizonName; }
            set { SetPropertyValue<string>("CoalHorizonName", ref fCoalHorizonName, value); }
        }
        string fGoldHorizonName;
        [Size(16)]
        public string GoldHorizonName
        {
            get { return fGoldHorizonName; }
            set { SetPropertyValue<string>("GoldHorizonName", ref fGoldHorizonName, value); }
        }
        string fCustomHorizonName;
        [Size(16)]
        public string CustomHorizonName
        {
            get { return fCustomHorizonName; }
            set { SetPropertyValue<string>("CustomHorizonName", ref fCustomHorizonName, value); }
        }
        string fDescription;
        [Size(255)]
        public string Description
        {
            get { return fDescription; }
            set { SetPropertyValue<string>("Description", ref fDescription, value); }
        }
        string fFullDescription;
        [Size(SizeAttribute.Unlimited)]
        public string FullDescription
        {
            get { return fFullDescription; }
            set { SetPropertyValue<string>("FullDescription", ref fFullDescription, value); }
        }
        byte[] fThumbnail;
        [Size(SizeAttribute.Unlimited)]
        public byte[] Thumbnail
        {
            get { return fThumbnail; }
            set { SetPropertyValue<byte[]>("Thumbnail", ref fThumbnail, value); }
        }
        FileData fOriginalFileDataID;
        [Association(@"DictionaryHorizonReferencesFileData")]
        public FileData OriginalFileDataID
        {
            get { return fOriginalFileDataID; }
            set { SetPropertyValue<FileData>("OriginalFileDataID", ref fOriginalFileDataID, value); }
        }
        [Association(@"LithologyReferencesDictionaryHorizon", typeof(Lithology))]
        public XPCollection<Lithology> Lithologys { get { return GetCollection<Lithology>("Lithologys"); } }
    }

}
