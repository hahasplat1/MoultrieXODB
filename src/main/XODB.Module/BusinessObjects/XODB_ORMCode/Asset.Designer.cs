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

    [Persistent(@"Q_Asset")]
    public partial class Asset : XPLiteObject
    {
        Guid fAssetID;
        [Key(true)]
        public Guid AssetID
        {
            get { return fAssetID; }
            set { SetPropertyValue<Guid>("AssetID", ref fAssetID, value); }
        }
        Asset fParentAssetID;
        [Association(@"Q_AssetReferencesQ_Asset")]
        public Asset ParentAssetID
        {
            get { return fParentAssetID; }
            set { SetPropertyValue<Asset>("ParentAssetID", ref fParentAssetID, value); }
        }
        string fAssetName;
        [Indexed(Name = @"UQ__ASSET__688B8C3B53D770D6", Unique = true)]
        [Size(60)]
        public string AssetName
        {
            get { return fAssetName; }
            set { SetPropertyValue<string>("AssetName", ref fAssetName, value); }
        }
        decimal fCost;
        public decimal Cost
        {
            get { return fCost; }
            set { SetPropertyValue<decimal>("Cost", ref fCost, value); }
        }
        DateTime fPurchased;
        public DateTime Purchased
        {
            get { return fPurchased; }
            set { SetPropertyValue<DateTime>("Purchased", ref fPurchased, value); }
        }
        PurchaseOrder fPurchaseOrderID;
        [Association(@"Q_AssetReferencesE_PurchaseOrder")]
        public PurchaseOrder PurchaseOrderID
        {
            get { return fPurchaseOrderID; }
            set { SetPropertyValue<PurchaseOrder>("PurchaseOrderID", ref fPurchaseOrderID, value); }
        }
        decimal fExpenseNotToExceedLifeTimeCost;
        public decimal ExpenseNotToExceedLifeTimeCost
        {
            get { return fExpenseNotToExceedLifeTimeCost; }
            set { SetPropertyValue<decimal>("ExpenseNotToExceedLifeTimeCost", ref fExpenseNotToExceedLifeTimeCost, value); }
        }
        Account fOwnerAccountID;
        [Association(@"Q_AssetReferencesQ_Account")]
        public Account OwnerAccountID
        {
            get { return fOwnerAccountID; }
            set { SetPropertyValue<Account>("OwnerAccountID", ref fOwnerAccountID, value); }
        }
        Account fBorrowerAccountID;
        [Association(@"Q_AssetReferencesQ_Account1")]
        public Account BorrowerAccountID
        {
            get { return fBorrowerAccountID; }
            set { SetPropertyValue<Account>("BorrowerAccountID", ref fBorrowerAccountID, value); }
        }
        Account fMaintenanceAccountID;
        [Association(@"Q_AssetReferencesQ_Account2")]
        public Account MaintenanceAccountID
        {
            get { return fMaintenanceAccountID; }
            set { SetPropertyValue<Account>("MaintenanceAccountID", ref fMaintenanceAccountID, value); }
        }
        DictionaryModel fModelID;
        [Association(@"AssetReferencesX_DictionaryModel")]
        public DictionaryModel ModelID
        {
            get { return fModelID; }
            set { SetPropertyValue<DictionaryModel>("ModelID", ref fModelID, value); }
        }
        Location fLocationID;
        [Association(@"Q_AssetReferencesLocation")]
        public Location LocationID
        {
            get { return fLocationID; }
            set { SetPropertyValue<Location>("LocationID", ref fLocationID, value); }
        }
        DicitonaryAssetStatus fAssetStatusID;
        [Association(@"Q_AssetReferencesQ_DicitonaryAssetStatus")]
        public DicitonaryAssetStatus AssetStatusID
        {
            get { return fAssetStatusID; }
            set { SetPropertyValue<DicitonaryAssetStatus>("AssetStatusID", ref fAssetStatusID, value); }
        }
        Experience fExperienceID;
        [Association(@"Q_AssetReferencesExperience")]
        public Experience ExperienceID
        {
            get { return fExperienceID; }
            set { SetPropertyValue<Experience>("ExperienceID", ref fExperienceID, value); }
        }
        string fDescription;
        [Size(255)]
        public string Description
        {
            get { return fDescription; }
            set { SetPropertyValue<string>("Description", ref fDescription, value); }
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
        [Association(@"Q_DeliveryAdviceItemReferencesQ_Asset", typeof(DeliveryAdviceItem))]
        public XPCollection<DeliveryAdviceItem> Q_DeliveryAdviceItems { get { return GetCollection<DeliveryAdviceItem>("Q_DeliveryAdviceItems"); } }
        [Association(@"Q_AssetAliasReferencesQ_Asset", typeof(AssetAlias))]
        public XPCollection<AssetAlias> Q_AssetAliasCollection { get { return GetCollection<AssetAlias>("Q_AssetAliasCollection"); } }
        [Association(@"Q_AssetMaintenanceReferencesQ_Asset", typeof(AssetMaintenance))]
        public XPCollection<AssetMaintenance> Q_AssetMaintenances { get { return GetCollection<AssetMaintenance>("Q_AssetMaintenances"); } }
        [Association(@"Q_AssetReferencesQ_Asset", typeof(Asset))]
        public XPCollection<Asset> Q_AssetCollection { get { return GetCollection<Asset>("Q_AssetCollection"); } }
        [Association(@"Q_AssetWarrantyReferencesQ_Asset", typeof(AssetWarranty))]
        public XPCollection<AssetWarranty> Q_AssetWarrantys { get { return GetCollection<AssetWarranty>("Q_AssetWarrantys"); } }
        [Association(@"Q_ContractAssetReferencesQ_Asset", typeof(ContractAsset))]
        public XPCollection<ContractAsset> Q_ContractAssets { get { return GetCollection<ContractAsset>("Q_ContractAssets"); } }
        [Association(@"Q_RecallModelAssetReferencesAsset", typeof(RecallModelAsset))]
        public XPCollection<RecallModelAsset> Q_RecallModelAssets { get { return GetCollection<RecallModelAsset>("Q_RecallModelAssets"); } }
    }

}
