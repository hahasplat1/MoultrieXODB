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

    [Persistent(@"X_DictionaryGroupMembership")]
    public partial class DictionaryGroupMembership : XPLiteObject
    {
        Guid fGroupMembershipID;
        [Key(true)]
        public Guid GroupMembershipID
        {
            get { return fGroupMembershipID; }
            set { SetPropertyValue<Guid>("GroupMembershipID", ref fGroupMembershipID, value); }
        }
        DictionaryGroup fParentGroupID;
        [Association(@"DictionaryGroupMembershipReferencesDictionaryGroup1")]
        public DictionaryGroup ParentGroupID
        {
            get { return fParentGroupID; }
            set { SetPropertyValue<DictionaryGroup>("ParentGroupID", ref fParentGroupID, value); }
        }
        DictionaryGroup fChildGroupID;
        [Association(@"DictionaryGroupMembershipReferencesDictionaryGroup")]
        public DictionaryGroup ChildGroupID
        {
            get { return fChildGroupID; }
            set { SetPropertyValue<DictionaryGroup>("ChildGroupID", ref fChildGroupID, value); }
        }
    }

}