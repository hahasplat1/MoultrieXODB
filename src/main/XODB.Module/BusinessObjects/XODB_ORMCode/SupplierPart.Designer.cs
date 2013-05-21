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

    [Persistent(@"Q_SupplierPart")]
    public partial class SupplierPart : XPLiteObject
    {
        Guid fSupplierPartID;
        [Key(true)]
        public Guid SupplierPartID
        {
            get { return fSupplierPartID; }
            set { SetPropertyValue<Guid>("SupplierPartID", ref fSupplierPartID, value); }
        }
        Company fSupplierID;
        [Association(@"Q_SupplierPartReferencesCompany")]
        public Company SupplierID
        {
            get { return fSupplierID; }
            set { SetPropertyValue<Company>("SupplierID", ref fSupplierID, value); }
        }
        DictionaryPart fPartID;
        [Association(@"Q_SupplierPartReferencesQ_DictionaryPart")]
        public DictionaryPart PartID
        {
            get { return fPartID; }
            set { SetPropertyValue<DictionaryPart>("PartID", ref fPartID, value); }
        }
        int fSeqeunce;
        public int Seqeunce
        {
            get { return fSeqeunce; }
            set { SetPropertyValue<int>("Seqeunce", ref fSeqeunce, value); }
        }
        bool fIsOEM;
        public bool IsOEM
        {
            get { return fIsOEM; }
            set { SetPropertyValue<bool>("IsOEM", ref fIsOEM, value); }
        }
        decimal fOrderQuantityMinimum;
        public decimal OrderQuantityMinimum
        {
            get { return fOrderQuantityMinimum; }
            set { SetPropertyValue<decimal>("OrderQuantityMinimum", ref fOrderQuantityMinimum, value); }
        }
        decimal fPricePerUnit;
        public decimal PricePerUnit
        {
            get { return fPricePerUnit; }
            set { SetPropertyValue<decimal>("PricePerUnit", ref fPricePerUnit, value); }
        }
        DictionaryUnit fPriceUnitID;
        [Association(@"Q_SupplierPartReferencesDictionaryUnit")]
        public DictionaryUnit PriceUnitID
        {
            get { return fPriceUnitID; }
            set { SetPropertyValue<DictionaryUnit>("PriceUnitID", ref fPriceUnitID, value); }
        }
        string fSupplierPartNumber;
        [Size(60)]
        public string SupplierPartNumber
        {
            get { return fSupplierPartNumber; }
            set { SetPropertyValue<string>("SupplierPartNumber", ref fSupplierPartNumber, value); }
        }
        string fSupplierPartDescription;
        [Size(SizeAttribute.Unlimited)]
        public string SupplierPartDescription
        {
            get { return fSupplierPartDescription; }
            set { SetPropertyValue<string>("SupplierPartDescription", ref fSupplierPartDescription, value); }
        }
        FileData fSupplierFileDataID;
        [Association(@"Q_SupplierPartReferencesFileData")]
        public FileData SupplierFileDataID
        {
            get { return fSupplierFileDataID; }
            set { SetPropertyValue<FileData>("SupplierFileDataID", ref fSupplierFileDataID, value); }
        }
        DictionaryUnit fLeadTimeUnitID;
        [Association(@"Q_SupplierPartReferencesDictionaryUnit1")]
        public DictionaryUnit LeadTimeUnitID
        {
            get { return fLeadTimeUnitID; }
            set { SetPropertyValue<DictionaryUnit>("LeadTimeUnitID", ref fLeadTimeUnitID, value); }
        }
        decimal fLeadTime;
        public decimal LeadTime
        {
            get { return fLeadTime; }
            set { SetPropertyValue<decimal>("LeadTime", ref fLeadTime, value); }
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
    }

}
