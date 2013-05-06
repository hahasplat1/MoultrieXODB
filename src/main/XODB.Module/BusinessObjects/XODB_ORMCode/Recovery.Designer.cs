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

    [Persistent(@"X_Recovery")]
    public partial class Recovery : XPLiteObject
    {
        Guid fRecoveryID;
        [Key(true)]
        public Guid RecoveryID
        {
            get { return fRecoveryID; }
            set { SetPropertyValue<Guid>("RecoveryID", ref fRecoveryID, value); }
        }
        Header fHeaderID;
        [Association(@"RecoveryReferencesHeader")]
        public Header HeaderID
        {
            get { return fHeaderID; }
            set { SetPropertyValue<Header>("HeaderID", ref fHeaderID, value); }
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
        decimal fAdvance;
        public decimal Advance
        {
            get { return fAdvance; }
            set { SetPropertyValue<decimal>("Advance", ref fAdvance, value); }
        }
        decimal fCoreLoss;
        public decimal CoreLoss
        {
            get { return fCoreLoss; }
            set { SetPropertyValue<decimal>("CoreLoss", ref fCoreLoss, value); }
        }
        decimal fCoreRecovered;
        public decimal CoreRecovered
        {
            get { return fCoreRecovered; }
            set { SetPropertyValue<decimal>("CoreRecovered", ref fCoreRecovered, value); }
        }
        decimal fSolid;
        public decimal Solid
        {
            get { return fSolid; }
            set { SetPropertyValue<decimal>("Solid", ref fSolid, value); }
        }
        decimal fTotal;
        public decimal Total
        {
            get { return fTotal; }
            set { SetPropertyValue<decimal>("Total", ref fTotal, value); }
        }
        bool fConfident;
        public bool Confident
        {
            get { return fConfident; }
            set { SetPropertyValue<bool>("Confident", ref fConfident, value); }
        }
        DictionaryDrillSize fDrillSizeID;
        [Association(@"RecoveryReferencesDictionaryDrillSize")]
        public DictionaryDrillSize DrillSizeID
        {
            get { return fDrillSizeID; }
            set { SetPropertyValue<DictionaryDrillSize>("DrillSizeID", ref fDrillSizeID, value); }
        }
        int fCoreSize;
        public int CoreSize
        {
            get { return fCoreSize; }
            set { SetPropertyValue<int>("CoreSize", ref fCoreSize, value); }
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
        [Association(@"CompositeReferencesRecovery", typeof(Composite))]
        public XPCollection<Composite> Composites { get { return GetCollection<Composite>("Composites"); } }
    }

}
