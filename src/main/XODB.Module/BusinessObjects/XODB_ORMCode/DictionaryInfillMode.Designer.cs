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

    [Persistent(@"X_DictionaryInfillMode")]
    public partial class DictionaryInfillMode : XPLiteObject
    {
        Guid fInfillModeID;
        [Key(true)]
        public Guid InfillModeID
        {
            get { return fInfillModeID; }
            set { SetPropertyValue<Guid>("InfillModeID", ref fInfillModeID, value); }
        }
        string fStandardInfillModeName;
        [Indexed(Name = @"IDictionaryInfillMode", Unique = true)]
        [Size(16)]
        public string StandardInfillModeName
        {
            get { return fStandardInfillModeName; }
            set { SetPropertyValue<string>("StandardInfillModeName", ref fStandardInfillModeName, value); }
        }
        string fCoalInfillModeName;
        [Size(16)]
        public string CoalInfillModeName
        {
            get { return fCoalInfillModeName; }
            set { SetPropertyValue<string>("CoalInfillModeName", ref fCoalInfillModeName, value); }
        }
        string fGoldInfillModeName;
        [Size(16)]
        public string GoldInfillModeName
        {
            get { return fGoldInfillModeName; }
            set { SetPropertyValue<string>("GoldInfillModeName", ref fGoldInfillModeName, value); }
        }
        string fCustomInfillModeName;
        [Size(16)]
        public string CustomInfillModeName
        {
            get { return fCustomInfillModeName; }
            set { SetPropertyValue<string>("CustomInfillModeName", ref fCustomInfillModeName, value); }
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
        [Association(@"DictionaryInfillModeReferencesFileData")]
        public FileData OriginalFileDataID
        {
            get { return fOriginalFileDataID; }
            set { SetPropertyValue<FileData>("OriginalFileDataID", ref fOriginalFileDataID, value); }
        }
        [Association(@"DefectReferencesDictionaryInfillMode", typeof(Defect))]
        public XPCollection<Defect> Defects { get { return GetCollection<Defect>("Defects"); } }
    }

}
