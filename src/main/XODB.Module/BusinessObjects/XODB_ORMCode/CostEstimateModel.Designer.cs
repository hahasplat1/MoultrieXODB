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

    [Persistent(@"X_CostEstimateModel")]
    public partial class CostEstimateModel : XPLiteObject
    {
        Guid fCostEstimateModelID;
        [Key(true)]
        public Guid CostEstimateModelID
        {
            get { return fCostEstimateModelID; }
            set { SetPropertyValue<Guid>("CostEstimateModelID", ref fCostEstimateModelID, value); }
        }
        CostEstimateModel fParentCostEstimateModelID;
        [Association(@"X_CostEstimateModelReferencesX_CostEstimateModel")]
        public CostEstimateModel ParentCostEstimateModelID
        {
            get { return fParentCostEstimateModelID; }
            set { SetPropertyValue<CostEstimateModel>("ParentCostEstimateModelID", ref fParentCostEstimateModelID, value); }
        }
        Contract fContractID;
        [Association(@"X_CostEstimateModelReferencesContract")]
        public Contract ContractID
        {
            get { return fContractID; }
            set { SetPropertyValue<Contract>("ContractID", ref fContractID, value); }
        }
        DictionaryModel fModelID;
        [Association(@"CostEstimateModelReferencesX_DictionaryModel")]
        public DictionaryModel ModelID
        {
            get { return fModelID; }
            set { SetPropertyValue<DictionaryModel>("ModelID", ref fModelID, value); }
        }
        DictionaryCostType fCostTypeID;
        [Association(@"X_CostEstimateModelReferencesX_DictionaryCostType")]
        public DictionaryCostType CostTypeID
        {
            get { return fCostTypeID; }
            set { SetPropertyValue<DictionaryCostType>("CostTypeID", ref fCostTypeID, value); }
        }
        DictionaryUnit fProRataUnitID;
        [Association(@"X_CostEstimateModelReferencesDictionaryUnit")]
        public DictionaryUnit ProRataUnitID
        {
            get { return fProRataUnitID; }
            set { SetPropertyValue<DictionaryUnit>("ProRataUnitID", ref fProRataUnitID, value); }
        }
        decimal fProRataUnits;
        public decimal ProRataUnits
        {
            get { return fProRataUnits; }
            set { SetPropertyValue<decimal>("ProRataUnits", ref fProRataUnits, value); }
        }
        decimal fProRataCost;
        public decimal ProRataCost
        {
            get { return fProRataCost; }
            set { SetPropertyValue<decimal>("ProRataCost", ref fProRataCost, value); }
        }
        bool fIsAccruableWithParentCost;
        public bool IsAccruableWithParentCost
        {
            get { return fIsAccruableWithParentCost; }
            set { SetPropertyValue<bool>("IsAccruableWithParentCost", ref fIsAccruableWithParentCost, value); }
        }
        DictionaryUnit fAccruedQuantumSIUnitID;
        [Association(@"X_CostEstimateModelReferencesDictionaryUnit1")]
        public DictionaryUnit AccruedQuantumSIUnitID
        {
            get { return fAccruedQuantumSIUnitID; }
            set { SetPropertyValue<DictionaryUnit>("AccruedQuantumSIUnitID", ref fAccruedQuantumSIUnitID, value); }
        }
        decimal fAccrued;
        public decimal Accrued
        {
            get { return fAccrued; }
            set { SetPropertyValue<decimal>("Accrued", ref fAccrued, value); }
        }
        string fSource;
        [Size(255)]
        public string Source
        {
            get { return fSource; }
            set { SetPropertyValue<string>("Source", ref fSource, value); }
        }
        string fNote;
        [Size(255)]
        public string Note
        {
            get { return fNote; }
            set { SetPropertyValue<string>("Note", ref fNote, value); }
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
        [Association(@"X_CostEstimateModelReferencesX_CostEstimateModel", typeof(CostEstimateModel))]
        public XPCollection<CostEstimateModel> X_CostEstimateModelCollection { get { return GetCollection<CostEstimateModel>("X_CostEstimateModelCollection"); } }
    }

}
