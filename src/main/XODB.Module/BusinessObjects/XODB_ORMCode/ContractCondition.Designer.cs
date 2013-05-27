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

    [Persistent(@"X_ContractCondition")]
    public partial class ContractCondition : XPLiteObject
    {
        Guid fContractConditionID;
        [Key(true)]
        public Guid ContractConditionID
        {
            get { return fContractConditionID; }
            set { SetPropertyValue<Guid>("ContractConditionID", ref fContractConditionID, value); }
        }
        Contract fContractID;
        [Association(@"X_ContractConditionReferencesContract")]
        public Contract ContractID
        {
            get { return fContractID; }
            set { SetPropertyValue<Contract>("ContractID", ref fContractID, value); }
        }
        DictionaryContractConditionType fContractConditionTypeID;
        [Association(@"X_ContractConditionReferencesX_DictionaryContractConditionType")]
        public DictionaryContractConditionType ContractConditionTypeID
        {
            get { return fContractConditionTypeID; }
            set { SetPropertyValue<DictionaryContractConditionType>("ContractConditionTypeID", ref fContractConditionTypeID, value); }
        }
        bool fIsIncluded;
        public bool IsIncluded
        {
            get { return fIsIncluded; }
            set { SetPropertyValue<bool>("IsIncluded", ref fIsIncluded, value); }
        }
        bool fIsExluded;
        public bool IsExluded
        {
            get { return fIsExluded; }
            set { SetPropertyValue<bool>("IsExluded", ref fIsExluded, value); }
        }
        Guid fUnitID;
        public Guid UnitID
        {
            get { return fUnitID; }
            set { SetPropertyValue<Guid>("UnitID", ref fUnitID, value); }
        }
        decimal fMaximum;
        public decimal Maximum
        {
            get { return fMaximum; }
            set { SetPropertyValue<decimal>("Maximum", ref fMaximum, value); }
        }
        decimal fMinimum;
        public decimal Minimum
        {
            get { return fMinimum; }
            set { SetPropertyValue<decimal>("Minimum", ref fMinimum, value); }
        }
        decimal fEstimatedValueUpfront;
        public decimal EstimatedValueUpfront
        {
            get { return fEstimatedValueUpfront; }
            set { SetPropertyValue<decimal>("EstimatedValueUpfront", ref fEstimatedValueUpfront, value); }
        }
        DictionaryUnit fEstimatedValueOngoingUnitID;
        [Association(@"X_ContractConditionReferencesDictionaryUnit")]
        public DictionaryUnit EstimatedValueOngoingUnitID
        {
            get { return fEstimatedValueOngoingUnitID; }
            set { SetPropertyValue<DictionaryUnit>("EstimatedValueOngoingUnitID", ref fEstimatedValueOngoingUnitID, value); }
        }
        decimal fEstimatedValueOngoing;
        public decimal EstimatedValueOngoing
        {
            get { return fEstimatedValueOngoing; }
            set { SetPropertyValue<decimal>("EstimatedValueOngoing", ref fEstimatedValueOngoing, value); }
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
        [Association(@"X_ContractConditionModelReferencesX_ContractCondition", typeof(ContractConditionModel))]
        public XPCollection<ContractConditionModel> X_ContractConditionModels { get { return GetCollection<ContractConditionModel>("X_ContractConditionModels"); } }
        [Association(@"X_ContractConditionPartReferencesX_ContractCondition", typeof(ContractConditionPart))]
        public XPCollection<ContractConditionPart> X_ContractConditionParts { get { return GetCollection<ContractConditionPart>("X_ContractConditionParts"); } }
    }

}
