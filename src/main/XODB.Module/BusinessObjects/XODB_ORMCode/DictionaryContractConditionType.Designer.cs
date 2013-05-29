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

    [Persistent(@"X_DictionaryContractConditionType")]
    public partial class DictionaryContractConditionType : XPLiteObject
    {
        Guid fContractConditionTypeID;
        [Key(true)]
        public Guid ContractConditionTypeID
        {
            get { return fContractConditionTypeID; }
            set { SetPropertyValue<Guid>("ContractConditionTypeID", ref fContractConditionTypeID, value); }
        }
        string fStandardContractConditionTypeName;
        [Size(30)]
        public string StandardContractConditionTypeName
        {
            get { return fStandardContractConditionTypeName; }
            set { SetPropertyValue<string>("StandardContractConditionTypeName", ref fStandardContractConditionTypeName, value); }
        }
        string fCustomContractConditionTypeName;
        [Size(30)]
        public string CustomContractConditionTypeName
        {
            get { return fCustomContractConditionTypeName; }
            set { SetPropertyValue<string>("CustomContractConditionTypeName", ref fCustomContractConditionTypeName, value); }
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
        [Association(@"DictionaryContractConditionTypeReferencesFileData")]
        public FileData OriginalFileDataID
        {
            get { return fOriginalFileDataID; }
            set { SetPropertyValue<FileData>("OriginalFileDataID", ref fOriginalFileDataID, value); }
        }
        [Association(@"ContractConditionReferencesX_DictionaryContractConditionType", typeof(ContractCondition))]
        public XPCollection<ContractCondition> ContractConditions { get { return GetCollection<ContractCondition>("ContractConditions"); } }
    }

}