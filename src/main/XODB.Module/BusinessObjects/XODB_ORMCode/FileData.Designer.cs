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

    [Persistent(@"X_FileData")]
    public partial class FileData : XPLiteObject
    {
        Guid fFileDataID;
        [Key(true)]
        public Guid FileDataID
        {
            get { return fFileDataID; }
            set { SetPropertyValue<Guid>("FileDataID", ref fFileDataID, value); }
        }
        FileData fParentFileID;
        [Association(@"FileDataReferencesFileData")]
        public FileData ParentFileID
        {
            get { return fParentFileID; }
            set { SetPropertyValue<FileData>("ParentFileID", ref fParentFileID, value); }
        }
        string fTableType;
        [Size(50)]
        public string TableType
        {
            get { return fTableType; }
            set { SetPropertyValue<string>("TableType", ref fTableType, value); }
        }
        Guid fReferenceID;
        public Guid ReferenceID
        {
            get { return fReferenceID; }
            set { SetPropertyValue<Guid>("ReferenceID", ref fReferenceID, value); }
        }
        string fFileName;
        [Size(255)]
        public string FileName
        {
            get { return fFileName; }
            set { SetPropertyValue<string>("FileName", ref fFileName, value); }
        }
        string fDocumentType;
        [Size(50)]
        public string DocumentType
        {
            get { return fDocumentType; }
            set { SetPropertyValue<string>("DocumentType", ref fDocumentType, value); }
        }
        string fMimeType;
        [Size(50)]
        public string MimeType
        {
            get { return fMimeType; }
            set { SetPropertyValue<string>("MimeType", ref fMimeType, value); }
        }
        string fAuthor;
        [Size(50)]
        public string Author
        {
            get { return fAuthor; }
            set { SetPropertyValue<string>("Author", ref fAuthor, value); }
        }
        byte[] fFileBytes;
        [Size(SizeAttribute.Unlimited)]
        public byte[] FileBytes
        {
            get { return fFileBytes; }
            set { SetPropertyValue<byte[]>("FileBytes", ref fFileBytes, value); }
        }
        string fFileContent;
        [Size(SizeAttribute.Unlimited)]
        public string FileContent
        {
            get { return fFileContent; }
            set { SetPropertyValue<string>("FileContent", ref fFileContent, value); }
        }
        string fFileChecksum;
        [Size(50)]
        public string FileChecksum
        {
            get { return fFileChecksum; }
            set { SetPropertyValue<string>("FileChecksum", ref fFileChecksum, value); }
        }
        string fComment;
        [Size(255)]
        public string Comment
        {
            get { return fComment; }
            set { SetPropertyValue<string>("Comment", ref fComment, value); }
        }
        [Association(@"FileDataReferencesFileData", typeof(FileData))]
        public XPCollection<FileData> FileDataCollection { get { return GetCollection<FileData>("FileDataCollection"); } }
    }

}