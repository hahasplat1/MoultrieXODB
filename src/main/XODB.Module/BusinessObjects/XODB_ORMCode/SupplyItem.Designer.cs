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

    [Persistent(@"E_SupplyItem")]
    public partial class SupplyItem : XPLiteObject
    {
        Guid fSupplyItemID;
        [Key(true)]
        public Guid SupplyItemID
        {
            get { return fSupplyItemID; }
            set { SetPropertyValue<Guid>("SupplyItemID", ref fSupplyItemID, value); }
        }
        Supply fSupplyID;
        [Association(@"E_SupplyItemReferencesE_Supply")]
        public Supply SupplyID
        {
            get { return fSupplyID; }
            set { SetPropertyValue<Supply>("SupplyID", ref fSupplyID, value); }
        }
        ProjectPlanTaskPart fProjectPlanTaskPartID;
        [Association(@"E_SupplyItemReferencesQ_ProjectPlanTaskPart")]
        public ProjectPlanTaskPart ProjectPlanTaskPartID
        {
            get { return fProjectPlanTaskPartID; }
            set { SetPropertyValue<ProjectPlanTaskPart>("ProjectPlanTaskPartID", ref fProjectPlanTaskPartID, value); }
        }
        ProjectPlanTaskResponse fProjectPlanTaskResponseID;
        [Association(@"E_SupplyItemReferencesProjectPlanTaskResponse")]
        public ProjectPlanTaskResponse ProjectPlanTaskResponseID
        {
            get { return fProjectPlanTaskResponseID; }
            set { SetPropertyValue<ProjectPlanTaskResponse>("ProjectPlanTaskResponseID", ref fProjectPlanTaskResponseID, value); }
        }
        Account fCustomerAccountID;
        [Association(@"E_SupplyItemReferencesQ_Account")]
        public Account CustomerAccountID
        {
            get { return fCustomerAccountID; }
            set { SetPropertyValue<Account>("CustomerAccountID", ref fCustomerAccountID, value); }
        }
        decimal fTax;
        public decimal Tax
        {
            get { return fTax; }
            set { SetPropertyValue<decimal>("Tax", ref fTax, value); }
        }
        DictionaryTax fTaxID;
        [Association(@"E_SupplyItemReferencesE_DictionaryTax")]
        public DictionaryTax TaxID
        {
            get { return fTaxID; }
            set { SetPropertyValue<DictionaryTax>("TaxID", ref fTaxID, value); }
        }
        decimal fCostPerUnitLabour;
        public decimal CostPerUnitLabour
        {
            get { return fCostPerUnitLabour; }
            set { SetPropertyValue<decimal>("CostPerUnitLabour", ref fCostPerUnitLabour, value); }
        }
        decimal fCostPerUnitPart;
        public decimal CostPerUnitPart
        {
            get { return fCostPerUnitPart; }
            set { SetPropertyValue<decimal>("CostPerUnitPart", ref fCostPerUnitPart, value); }
        }
        decimal fCost;
        public decimal Cost
        {
            get { return fCost; }
            set { SetPropertyValue<decimal>("Cost", ref fCost, value); }
        }
        decimal fSubtotal;
        public decimal Subtotal
        {
            get { return fSubtotal; }
            set { SetPropertyValue<decimal>("Subtotal", ref fSubtotal, value); }
        }
        string fNotes;
        [Size(255)]
        public string Notes
        {
            get { return fNotes; }
            set { SetPropertyValue<string>("Notes", ref fNotes, value); }
        }
        Guid fUnitID;
        public Guid UnitID
        {
            get { return fUnitID; }
            set { SetPropertyValue<Guid>("UnitID", ref fUnitID, value); }
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
        [Association(@"E_InvoiceLineReferencesE_SupplyItem", typeof(InvoiceLine))]
        public XPCollection<InvoiceLine> E_InvoiceLines { get { return GetCollection<InvoiceLine>("E_InvoiceLines"); } }
    }

}
