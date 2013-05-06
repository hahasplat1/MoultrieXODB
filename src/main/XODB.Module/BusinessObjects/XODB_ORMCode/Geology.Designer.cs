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

    [Persistent(@"X_Geology")]
    public partial class Geology : XPLiteObject
    {
        Guid fGeologyID;
        [Key(true)]
        public Guid GeologyID
        {
            get { return fGeologyID; }
            set { SetPropertyValue<Guid>("GeologyID", ref fGeologyID, value); }
        }
        Header fHeaderID;
        [Association(@"GeologyReferencesHeader")]
        public Header HeaderID
        {
            get { return fHeaderID; }
            set { SetPropertyValue<Header>("HeaderID", ref fHeaderID, value); }
        }
        Contact fGeologyContactID;
        [Association(@"GeologyReferencesContact")]
        public Contact GeologyContactID
        {
            get { return fGeologyContactID; }
            set { SetPropertyValue<Contact>("GeologyContactID", ref fGeologyContactID, value); }
        }
        decimal fFromDepth;
        public decimal FromDepth
        {
            get { return fFromDepth; }
            set { SetPropertyValue<decimal>("FromDepth", ref fFromDepth, value); }
        }
        decimal fToDepth;
        public decimal ToDepth
        {
            get { return fToDepth; }
            set { SetPropertyValue<decimal>("ToDepth", ref fToDepth, value); }
        }
        string fComment;
        [Size(SizeAttribute.Unlimited)]
        public string Comment
        {
            get { return fComment; }
            set { SetPropertyValue<string>("Comment", ref fComment, value); }
        }
        int fVersion;
        public int Version
        {
            get { return fVersion; }
            set { SetPropertyValue<int>("Version", ref fVersion, value); }
        }
        Guid fVersionAntecedentID;
        public Guid VersionAntecedentID
        {
            get { return fVersionAntecedentID; }
            set { SetPropertyValue<Guid>("VersionAntecedentID", ref fVersionAntecedentID, value); }
        }
        int fVersionCertainty;
        public int VersionCertainty
        {
            get { return fVersionCertainty; }
            set { SetPropertyValue<int>("VersionCertainty", ref fVersionCertainty, value); }
        }
        Guid fVersionWorkflowInstanceID;
        public Guid VersionWorkflowInstanceID
        {
            get { return fVersionWorkflowInstanceID; }
            set { SetPropertyValue<Guid>("VersionWorkflowInstanceID", ref fVersionWorkflowInstanceID, value); }
        }
        Guid fVersionUpdatedBy;
        public Guid VersionUpdatedBy
        {
            get { return fVersionUpdatedBy; }
            set { SetPropertyValue<Guid>("VersionUpdatedBy", ref fVersionUpdatedBy, value); }
        }
        Guid fVersionDeletedBy;
        public Guid VersionDeletedBy
        {
            get { return fVersionDeletedBy; }
            set { SetPropertyValue<Guid>("VersionDeletedBy", ref fVersionDeletedBy, value); }
        }
        Guid fVersionOwnerContactID;
        public Guid VersionOwnerContactID
        {
            get { return fVersionOwnerContactID; }
            set { SetPropertyValue<Guid>("VersionOwnerContactID", ref fVersionOwnerContactID, value); }
        }
        Guid fVersionOwnerCompanyID;
        public Guid VersionOwnerCompanyID
        {
            get { return fVersionOwnerCompanyID; }
            set { SetPropertyValue<Guid>("VersionOwnerCompanyID", ref fVersionOwnerCompanyID, value); }
        }
        DateTime fVersionUpdated;
        public DateTime VersionUpdated
        {
            get { return fVersionUpdated; }
            set { SetPropertyValue<DateTime>("VersionUpdated", ref fVersionUpdated, value); }
        }
        [Association(@"CompositeReferencesGeology", typeof(Composite))]
        public XPCollection<Composite> Composites { get { return GetCollection<Composite>("Composites"); } }
    }

}
