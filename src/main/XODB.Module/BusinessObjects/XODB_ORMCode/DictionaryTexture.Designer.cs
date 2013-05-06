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

    [Persistent(@"X_DictionaryTexture")]
    public partial class DictionaryTexture : XPLiteObject
    {
        Guid fTextureID;
        [Key(true)]
        public Guid TextureID
        {
            get { return fTextureID; }
            set { SetPropertyValue<Guid>("TextureID", ref fTextureID, value); }
        }
        string fStandardTextureName;
        [Indexed(Name = @"IDictionaryTexture", Unique = true)]
        [Size(16)]
        public string StandardTextureName
        {
            get { return fStandardTextureName; }
            set { SetPropertyValue<string>("StandardTextureName", ref fStandardTextureName, value); }
        }
        string fCoalTextureName;
        [Size(16)]
        public string CoalTextureName
        {
            get { return fCoalTextureName; }
            set { SetPropertyValue<string>("CoalTextureName", ref fCoalTextureName, value); }
        }
        string fGoldTextureName;
        [Size(16)]
        public string GoldTextureName
        {
            get { return fGoldTextureName; }
            set { SetPropertyValue<string>("GoldTextureName", ref fGoldTextureName, value); }
        }
        string fCustomTextureName;
        [Size(16)]
        public string CustomTextureName
        {
            get { return fCustomTextureName; }
            set { SetPropertyValue<string>("CustomTextureName", ref fCustomTextureName, value); }
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
        [Association(@"DictionaryTextureReferencesFileData")]
        public FileData OriginalFileDataID
        {
            get { return fOriginalFileDataID; }
            set { SetPropertyValue<FileData>("OriginalFileDataID", ref fOriginalFileDataID, value); }
        }
        [Association(@"LithologyReferencesDictionaryTexture", typeof(Lithology))]
        public XPCollection<Lithology> Lithologys { get { return GetCollection<Lithology>("Lithologys"); } }
    }

}
