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

    [Persistent(@"X_DictionaryWorkTypeRelation")]
    public partial class DictionaryWorkTypeRelation : XPLiteObject
    {
        Guid fWorkTypeRelationID;
        [Key(true)]
        public Guid WorkTypeRelationID
        {
            get { return fWorkTypeRelationID; }
            set { SetPropertyValue<Guid>("WorkTypeRelationID", ref fWorkTypeRelationID, value); }
        }
        DictionaryWorkType fWorkTypeID;
        [Association(@"DictionaryWorkTypeRelationReferencesDictionaryWorkType")]
        public DictionaryWorkType WorkTypeID
        {
            get { return fWorkTypeID; }
            set { SetPropertyValue<DictionaryWorkType>("WorkTypeID", ref fWorkTypeID, value); }
        }
        DictionaryWorkType fParentWorkTypeID;
        [Indexed(@"WorkTypeID", Name = @"IDictionaryWorkTypeRelation", Unique = true)]
        [Association(@"DictionaryWorkTypeRelationReferencesDictionaryWorkType1")]
        public DictionaryWorkType ParentWorkTypeID
        {
            get { return fParentWorkTypeID; }
            set { SetPropertyValue<DictionaryWorkType>("ParentWorkTypeID", ref fParentWorkTypeID, value); }
        }
    }

}