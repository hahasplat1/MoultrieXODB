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

    [Persistent(@"X_DictionaryShade")]
    public partial class DictionaryShade : XPLiteObject
    {
        Guid fShadeID;
        [Key(true)]
        public Guid ShadeID
        {
            get { return fShadeID; }
            set { SetPropertyValue<Guid>("ShadeID", ref fShadeID, value); }
        }
        string fStandardShadeName;
        [Indexed(Name = @"IDictionaryShade", Unique = true)]
        [Size(16)]
        public string StandardShadeName
        {
            get { return fStandardShadeName; }
            set { SetPropertyValue<string>("StandardShadeName", ref fStandardShadeName, value); }
        }
        string fCoalShadeName;
        [Size(16)]
        public string CoalShadeName
        {
            get { return fCoalShadeName; }
            set { SetPropertyValue<string>("CoalShadeName", ref fCoalShadeName, value); }
        }
        string fGoldShadeName;
        [Size(16)]
        public string GoldShadeName
        {
            get { return fGoldShadeName; }
            set { SetPropertyValue<string>("GoldShadeName", ref fGoldShadeName, value); }
        }
        string fCustomShadeName;
        [Size(16)]
        public string CustomShadeName
        {
            get { return fCustomShadeName; }
            set { SetPropertyValue<string>("CustomShadeName", ref fCustomShadeName, value); }
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
        [Association(@"DictionaryShadeReferencesFileData")]
        public FileData OriginalFileDataID
        {
            get { return fOriginalFileDataID; }
            set { SetPropertyValue<FileData>("OriginalFileDataID", ref fOriginalFileDataID, value); }
        }
        [Association(@"LithologyReferencesDictionaryShade", typeof(Lithology))]
        public XPCollection<Lithology> Lithologys { get { return GetCollection<Lithology>("Lithologys"); } }
    }

}
