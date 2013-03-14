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

    [Persistent(@"X_Tenement")]
    public partial class Tenement : XPLiteObject
    {
        Guid fTenementID;
        [Key(true)]
        public Guid TenementID
        {
            get { return fTenementID; }
            set { SetPropertyValue<Guid>("TenementID", ref fTenementID, value); }
        }
        string fTenementName;
        [Size(60)]
        public string TenementName
        {
            get { return fTenementName; }
            set { SetPropertyValue<string>("TenementName", ref fTenementName, value); }
        }
        string fTenementNumber;
        [Size(60)]
        public string TenementNumber
        {
            get { return fTenementNumber; }
            set { SetPropertyValue<string>("TenementNumber", ref fTenementNumber, value); }
        }
        string fTenementDevelopmentPhase;
        [Size(50)]
        public string TenementDevelopmentPhase
        {
            get { return fTenementDevelopmentPhase; }
            set { SetPropertyValue<string>("TenementDevelopmentPhase", ref fTenementDevelopmentPhase, value); }
        }
        DictionaryCountry fCountryID;
        [Size(2)]
        [Association(@"TenementReferencesDictionaryCountry")]
        public DictionaryCountry CountryID
        {
            get { return fCountryID; }
            set { SetPropertyValue<DictionaryCountry>("CountryID", ref fCountryID, value); }
        }
        string fState;
        [Size(60)]
        public string State
        {
            get { return fState; }
            set { SetPropertyValue<string>("State", ref fState, value); }
        }
        string fProvince;
        [Size(60)]
        public string Province
        {
            get { return fProvince; }
            set { SetPropertyValue<string>("Province", ref fProvince, value); }
        }
        Company fOwnerCompanyID;
        [Association(@"TenementReferencesCompany")]
        public Company OwnerCompanyID
        {
            get { return fOwnerCompanyID; }
            set { SetPropertyValue<Company>("OwnerCompanyID", ref fOwnerCompanyID, value); }
        }
        Contact fApprovedByContactID;
        [Association(@"TenementReferencesContact")]
        public Contact ApprovedByContactID
        {
            get { return fApprovedByContactID; }
            set { SetPropertyValue<Contact>("ApprovedByContactID", ref fApprovedByContactID, value); }
        }
        DateTime fValidFrom;
        public DateTime ValidFrom
        {
            get { return fValidFrom; }
            set { SetPropertyValue<DateTime>("ValidFrom", ref fValidFrom, value); }
        }
        DateTime fExpiry;
        public DateTime Expiry
        {
            get { return fExpiry; }
            set { SetPropertyValue<DateTime>("Expiry", ref fExpiry, value); }
        }
        [Association(@"LeaseReferencesTenement", typeof(Lease))]
        public XPCollection<Lease> Leases { get { return GetCollection<Lease>("Leases"); } }
        [Association(@"LeaseApplicationReferencesTenement", typeof(LeaseApplication))]
        public XPCollection<LeaseApplication> LeaseApplications { get { return GetCollection<LeaseApplication>("LeaseApplications"); } }
        [Association(@"ProjectReferencesTenement", typeof(Project))]
        public XPCollection<Project> Projects { get { return GetCollection<Project>("Projects"); } }
        [Association(@"ProspectusReferencesTenement", typeof(Prospectus))]
        public XPCollection<Prospectus> ProspectusCollection { get { return GetCollection<Prospectus>("ProspectusCollection"); } }
        [Association(@"TenementCommodityReferencesTenement", typeof(TenementCommodity))]
        public XPCollection<TenementCommodity> TenementCommoditys { get { return GetCollection<TenementCommodity>("TenementCommoditys"); } }
        [Association(@"TenementProvinceReferencesTenement", typeof(TenementProvince))]
        public XPCollection<TenementProvince> TenementProvinces { get { return GetCollection<TenementProvince>("TenementProvinces"); } }
        [Association(@"TenementRelationReferencesTenement", typeof(TenementRelation))]
        public XPCollection<TenementRelation> TenementRelations { get { return GetCollection<TenementRelation>("TenementRelations"); } }
        [Association(@"TenementRelationReferencesTenement1", typeof(TenementRelation))]
        public XPCollection<TenementRelation> TenementRelations1 { get { return GetCollection<TenementRelation>("TenementRelations1"); } }
    }

}