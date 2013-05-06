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

    [Persistent(@"X_Location")]
    public partial class Location : XPLiteObject
    {
        Guid fLocationID;
        [Key(true)]
        public Guid LocationID
        {
            get { return fLocationID; }
            set { SetPropertyValue<Guid>("LocationID", ref fLocationID, value); }
        }
        DictionaryLocationType fLocationType;
        [Association(@"LocationReferencesDictionaryLocationType")]
        public DictionaryLocationType LocationType
        {
            get { return fLocationType; }
            set { SetPropertyValue<DictionaryLocationType>("LocationType", ref fLocationType, value); }
        }
        string fDefaultLocationName;
        [Size(255)]
        public string DefaultLocationName
        {
            get { return fDefaultLocationName; }
            set { SetPropertyValue<string>("DefaultLocationName", ref fDefaultLocationName, value); }
        }
        decimal fLatitudeWGS84;
        public decimal LatitudeWGS84
        {
            get { return fLatitudeWGS84; }
            set { SetPropertyValue<decimal>("LatitudeWGS84", ref fLatitudeWGS84, value); }
        }
        decimal fLongitudeWGS84;
        public decimal LongitudeWGS84
        {
            get { return fLongitudeWGS84; }
            set { SetPropertyValue<decimal>("LongitudeWGS84", ref fLongitudeWGS84, value); }
        }
        DictionaryCountry fCountryID;
        [Size(2)]
        [Association(@"LocationReferencesDictionaryCountry")]
        public DictionaryCountry CountryID
        {
            get { return fCountryID; }
            set { SetPropertyValue<DictionaryCountry>("CountryID", ref fCountryID, value); }
        }
        DictionaryCountryState fCountryStateID;
        [Association(@"LocationReferencesDictionaryCountryState")]
        public DictionaryCountryState CountryStateID
        {
            get { return fCountryStateID; }
            set { SetPropertyValue<DictionaryCountryState>("CountryStateID", ref fCountryStateID, value); }
        }
        string fDefaultCulture;
        [Size(5)]
        public string DefaultCulture
        {
            get { return fDefaultCulture; }
            set { SetPropertyValue<string>("DefaultCulture", ref fDefaultCulture, value); }
        }
        Company fOwnerCompanyID;
        [Association(@"LocationReferencesCompany")]
        public Company OwnerCompanyID
        {
            get { return fOwnerCompanyID; }
            set { SetPropertyValue<Company>("OwnerCompanyID", ref fOwnerCompanyID, value); }
        }
        Contact fResponsibleContactID;
        [Association(@"LocationReferencesContact")]
        public Contact ResponsibleContactID
        {
            get { return fResponsibleContactID; }
            set { SetPropertyValue<Contact>("ResponsibleContactID", ref fResponsibleContactID, value); }
        }
        string fComment;
        [Size(255)]
        public string Comment
        {
            get { return fComment; }
            set { SetPropertyValue<string>("Comment", ref fComment, value); }
        }
        DictionaryLocationType fLocationTypeID;
        [Association(@"LocationReferencesDictionaryLocationType1")]
        public DictionaryLocationType LocationTypeID
        {
            get { return fLocationTypeID; }
            set { SetPropertyValue<DictionaryLocationType>("LocationTypeID", ref fLocationTypeID, value); }
        }
        string fLocationCode;
        [Size(120)]
        public string LocationCode
        {
            get { return fLocationCode; }
            set { SetPropertyValue<string>("LocationCode", ref fLocationCode, value); }
        }
        decimal fElevation;
        public decimal Elevation
        {
            get { return fElevation; }
            set { SetPropertyValue<decimal>("Elevation", ref fElevation, value); }
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
        [Association(@"AddressReferencesLocation", typeof(Address))]
        public XPCollection<Address> AddressCollection { get { return GetCollection<Address>("AddressCollection"); } }
        [Association(@"ExperienceReferencesLocation", typeof(Experience))]
        public XPCollection<Experience> Experiences { get { return GetCollection<Experience>("Experiences"); } }
        [Association(@"LocationAliasReferencesLocation", typeof(LocationAlias))]
        public XPCollection<LocationAlias> LocationAliasCollection { get { return GetCollection<LocationAlias>("LocationAliasCollection"); } }
        [Association(@"HeaderReferencesLocation", typeof(Header))]
        public XPCollection<Header> Headers { get { return GetCollection<Header>("Headers"); } }
        [Association(@"X_LocationHistoryReferencesLocation", typeof(LocationHistory))]
        public XPCollection<LocationHistory> X_LocationHistorys { get { return GetCollection<LocationHistory>("X_LocationHistorys"); } }
    }

}
