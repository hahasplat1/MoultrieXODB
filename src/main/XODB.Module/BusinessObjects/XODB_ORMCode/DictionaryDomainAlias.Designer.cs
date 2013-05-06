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

    [Persistent(@"X_DictionaryDomainAlias")]
    public partial class DictionaryDomainAlias : XPLiteObject
    {
        Guid fDomainAliasID;
        [Key(true)]
        public Guid DomainAliasID
        {
            get { return fDomainAliasID; }
            set { SetPropertyValue<Guid>("DomainAliasID", ref fDomainAliasID, value); }
        }
        DictionaryDomain fDomainID;
        [Association(@"DictionaryDomainAliasReferencesDictionaryDomain")]
        public DictionaryDomain DomainID
        {
            get { return fDomainID; }
            set { SetPropertyValue<DictionaryDomain>("DomainID", ref fDomainID, value); }
        }
        string fCustomDomainName;
        [Size(16)]
        public string CustomDomainName
        {
            get { return fCustomDomainName; }
            set { SetPropertyValue<string>("CustomDomainName", ref fCustomDomainName, value); }
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
        [Association(@"DictionaryDomainAliasReferencesFileData")]
        public FileData OriginalFileDataID
        {
            get { return fOriginalFileDataID; }
            set { SetPropertyValue<FileData>("OriginalFileDataID", ref fOriginalFileDataID, value); }
        }
    }

}
