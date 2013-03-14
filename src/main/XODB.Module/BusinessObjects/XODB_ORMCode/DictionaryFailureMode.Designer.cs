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

    [Persistent(@"X_DictionaryFailureMode")]
    public partial class DictionaryFailureMode : XPLiteObject
    {
        Guid fFailureModeID;
        [Key(true)]
        public Guid FailureModeID
        {
            get { return fFailureModeID; }
            set { SetPropertyValue<Guid>("FailureModeID", ref fFailureModeID, value); }
        }
        string fStandardFailureModeName;
        [Indexed(Name = @"IDictionaryFailureMode", Unique = true)]
        [Size(16)]
        public string StandardFailureModeName
        {
            get { return fStandardFailureModeName; }
            set { SetPropertyValue<string>("StandardFailureModeName", ref fStandardFailureModeName, value); }
        }
        string fCoalFailureModeName;
        [Size(16)]
        public string CoalFailureModeName
        {
            get { return fCoalFailureModeName; }
            set { SetPropertyValue<string>("CoalFailureModeName", ref fCoalFailureModeName, value); }
        }
        string fGoldFailureModeName;
        [Size(16)]
        public string GoldFailureModeName
        {
            get { return fGoldFailureModeName; }
            set { SetPropertyValue<string>("GoldFailureModeName", ref fGoldFailureModeName, value); }
        }
        string fCustomFailureModeName;
        [Size(16)]
        public string CustomFailureModeName
        {
            get { return fCustomFailureModeName; }
            set { SetPropertyValue<string>("CustomFailureModeName", ref fCustomFailureModeName, value); }
        }
        string fDescription;
        [Size(255)]
        public string Description
        {
            get { return fDescription; }
            set { SetPropertyValue<string>("Description", ref fDescription, value); }
        }
        [Association(@"PointLoadReferencesDictionaryFailureMode", typeof(PointLoad))]
        public XPCollection<PointLoad> PointLoads { get { return GetCollection<PointLoad>("PointLoads"); } }
    }

}