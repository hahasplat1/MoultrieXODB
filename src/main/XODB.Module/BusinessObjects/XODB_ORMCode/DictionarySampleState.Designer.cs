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

    [Persistent(@"X_DictionarySampleState")]
    public partial class DictionarySampleState : XPLiteObject
    {
        Guid fSampleStateID;
        [Key(true)]
        public Guid SampleStateID
        {
            get { return fSampleStateID; }
            set { SetPropertyValue<Guid>("SampleStateID", ref fSampleStateID, value); }
        }
        string fStandardSampleStateName;
        [Indexed(Name = @"IDictionarySampleState", Unique = true)]
        [Size(16)]
        public string StandardSampleStateName
        {
            get { return fStandardSampleStateName; }
            set { SetPropertyValue<string>("StandardSampleStateName", ref fStandardSampleStateName, value); }
        }
        string fCoalSampleStateName;
        [Size(16)]
        public string CoalSampleStateName
        {
            get { return fCoalSampleStateName; }
            set { SetPropertyValue<string>("CoalSampleStateName", ref fCoalSampleStateName, value); }
        }
        string fGoldSampleStateName;
        [Size(16)]
        public string GoldSampleStateName
        {
            get { return fGoldSampleStateName; }
            set { SetPropertyValue<string>("GoldSampleStateName", ref fGoldSampleStateName, value); }
        }
        string fCustomSampleStateName;
        [Size(16)]
        public string CustomSampleStateName
        {
            get { return fCustomSampleStateName; }
            set { SetPropertyValue<string>("CustomSampleStateName", ref fCustomSampleStateName, value); }
        }
        string fDescription;
        [Size(255)]
        public string Description
        {
            get { return fDescription; }
            set { SetPropertyValue<string>("Description", ref fDescription, value); }
        }
        [Association(@"AssayGroupStandardTestResultReferencesDictionarySampleState", typeof(AssayGroupStandardTestResult))]
        public XPCollection<AssayGroupStandardTestResult> AssayGroupStandardTestResults { get { return GetCollection<AssayGroupStandardTestResult>("AssayGroupStandardTestResults"); } }
        [Association(@"AssayGroupTestSampleReferencesDictionarySampleState", typeof(AssayGroupTestSample))]
        public XPCollection<AssayGroupTestSample> AssayGroupTestSamples { get { return GetCollection<AssayGroupTestSample>("AssayGroupTestSamples"); } }
        [Association(@"PointLoadReferencesDictionarySampleState", typeof(PointLoad))]
        public XPCollection<PointLoad> PointLoads { get { return GetCollection<PointLoad>("PointLoads"); } }
    }

}