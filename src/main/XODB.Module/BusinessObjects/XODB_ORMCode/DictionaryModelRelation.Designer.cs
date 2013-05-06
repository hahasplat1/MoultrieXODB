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

    [Persistent(@"X_DictionaryModelRelation")]
    public partial class DictionaryModelRelation : XPLiteObject
    {
        Guid fModelRelationID;
        [Key(true)]
        public Guid ModelRelationID
        {
            get { return fModelRelationID; }
            set { SetPropertyValue<Guid>("ModelRelationID", ref fModelRelationID, value); }
        }
        Guid fOriginalModelID;
        public Guid OriginalModelID
        {
            get { return fOriginalModelID; }
            set { SetPropertyValue<Guid>("OriginalModelID", ref fOriginalModelID, value); }
        }
        Guid fRelatedModelID;
        public Guid RelatedModelID
        {
            get { return fRelatedModelID; }
            set { SetPropertyValue<Guid>("RelatedModelID", ref fRelatedModelID, value); }
        }
        DictionaryRelationType fRelationTypeID;
        [Association(@"X_DictionaryModelRelationReferencesDictionaryRelationType")]
        public DictionaryRelationType RelationTypeID
        {
            get { return fRelationTypeID; }
            set { SetPropertyValue<DictionaryRelationType>("RelationTypeID", ref fRelationTypeID, value); }
        }
        DateTime fRelated;
        public DateTime Related
        {
            get { return fRelated; }
            set { SetPropertyValue<DateTime>("Related", ref fRelated, value); }
        }
    }

}
