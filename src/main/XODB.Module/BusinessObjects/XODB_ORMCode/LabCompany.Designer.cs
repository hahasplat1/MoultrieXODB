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

    [Persistent(@"X_LabCompany")]
    public partial class LabCompany : XPLiteObject
    {
        Guid fLabCompanyID;
        [Key(true)]
        public Guid LabCompanyID
        {
            get { return fLabCompanyID; }
            set { SetPropertyValue<Guid>("LabCompanyID", ref fLabCompanyID, value); }
        }
        Company fCompanyID;
        [Association(@"LabCompanyReferencesCompany")]
        public Company CompanyID
        {
            get { return fCompanyID; }
            set { SetPropertyValue<Company>("CompanyID", ref fCompanyID, value); }
        }
        [Association(@"AssayGroupReferencesLabCompany", typeof(AssayGroup))]
        public XPCollection<AssayGroup> AssayGroups { get { return GetCollection<AssayGroup>("AssayGroups"); } }
    }

}