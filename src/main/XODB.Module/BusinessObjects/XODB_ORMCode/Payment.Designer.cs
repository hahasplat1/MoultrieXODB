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

    [Persistent(@"E_Payment")]
    public partial class Payment : XPLiteObject
    {
        Guid fPaymentID;
        [Key(true)]
        public Guid PaymentID
        {
            get { return fPaymentID; }
            set { SetPropertyValue<Guid>("PaymentID", ref fPaymentID, value); }
        }
        Account fSupplierAccountID;
        [Association(@"E_PaymentReferencesQ_Account1")]
        public Account SupplierAccountID
        {
            get { return fSupplierAccountID; }
            set { SetPropertyValue<Account>("SupplierAccountID", ref fSupplierAccountID, value); }
        }
        Account fCustomerAccountID;
        [Association(@"E_PaymentReferencesQ_Account")]
        public Account CustomerAccountID
        {
            get { return fCustomerAccountID; }
            set { SetPropertyValue<Account>("CustomerAccountID", ref fCustomerAccountID, value); }
        }
        decimal fAmount;
        public decimal Amount
        {
            get { return fAmount; }
            set { SetPropertyValue<decimal>("Amount", ref fAmount, value); }
        }
        DateTime fPaid;
        public DateTime Paid
        {
            get { return fPaid; }
            set { SetPropertyValue<DateTime>("Paid", ref fPaid, value); }
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
        decimal fOriginalAmount;
        public decimal OriginalAmount
        {
            get { return fOriginalAmount; }
            set { SetPropertyValue<decimal>("OriginalAmount", ref fOriginalAmount, value); }
        }
        Currency fCurrencyID;
        [Association(@"PaymentReferencesE_Currency")]
        public Currency CurrencyID
        {
            get { return fCurrencyID; }
            set { SetPropertyValue<Currency>("CurrencyID", ref fCurrencyID, value); }
        }
    }

}
