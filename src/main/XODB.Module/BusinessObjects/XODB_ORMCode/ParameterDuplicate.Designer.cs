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

    [Persistent(@"X_ParameterDuplicate")]
    public partial class ParameterDuplicate : XPLiteObject
    {
        Guid fParameterDuplicateID;
        [Key(true)]
        public Guid ParameterDuplicateID
        {
            get { return fParameterDuplicateID; }
            set { SetPropertyValue<Guid>("ParameterDuplicateID", ref fParameterDuplicateID, value); }
        }
        Parameter fParameter1ID;
        [Association(@"ParameterDuplicateReferencesParameter")]
        public Parameter Parameter1ID
        {
            get { return fParameter1ID; }
            set { SetPropertyValue<Parameter>("Parameter1ID", ref fParameter1ID, value); }
        }
        Parameter fParameter2ID;
        [Association(@"ParameterDuplicateReferencesParameter1")]
        public Parameter Parameter2ID
        {
            get { return fParameter2ID; }
            set { SetPropertyValue<Parameter>("Parameter2ID", ref fParameter2ID, value); }
        }
    }

}