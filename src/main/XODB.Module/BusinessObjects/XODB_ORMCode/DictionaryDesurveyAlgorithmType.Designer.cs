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

    [Persistent(@"X_DictionaryDesurveyAlgorithmType")]
    public partial class DictionaryDesurveyAlgorithmType : XPLiteObject
    {
        Guid fDesurveyAlgorithmTypeID;
        [Key(true)]
        public Guid DesurveyAlgorithmTypeID
        {
            get { return fDesurveyAlgorithmTypeID; }
            set { SetPropertyValue<Guid>("DesurveyAlgorithmTypeID", ref fDesurveyAlgorithmTypeID, value); }
        }
        string fStandardDesurveyAlgorithmTypeName;
        [Indexed(Name = @"IDictionaryDesurveyAlgorithmType", Unique = true)]
        [Size(50)]
        public string StandardDesurveyAlgorithmTypeName
        {
            get { return fStandardDesurveyAlgorithmTypeName; }
            set { SetPropertyValue<string>("StandardDesurveyAlgorithmTypeName", ref fStandardDesurveyAlgorithmTypeName, value); }
        }
        string fCoalDesurveyAlgorithmTypeName;
        [Size(50)]
        public string CoalDesurveyAlgorithmTypeName
        {
            get { return fCoalDesurveyAlgorithmTypeName; }
            set { SetPropertyValue<string>("CoalDesurveyAlgorithmTypeName", ref fCoalDesurveyAlgorithmTypeName, value); }
        }
        string fGoldDesurveyAlgorithmTypeName;
        [Size(50)]
        public string GoldDesurveyAlgorithmTypeName
        {
            get { return fGoldDesurveyAlgorithmTypeName; }
            set { SetPropertyValue<string>("GoldDesurveyAlgorithmTypeName", ref fGoldDesurveyAlgorithmTypeName, value); }
        }
        string fCustomDesurveyAlgorithmTypeName;
        [Size(50)]
        public string CustomDesurveyAlgorithmTypeName
        {
            get { return fCustomDesurveyAlgorithmTypeName; }
            set { SetPropertyValue<string>("CustomDesurveyAlgorithmTypeName", ref fCustomDesurveyAlgorithmTypeName, value); }
        }
        string fDescription;
        [Size(255)]
        public string Description
        {
            get { return fDescription; }
            set { SetPropertyValue<string>("Description", ref fDescription, value); }
        }
        [Association(@"DesurveyReferencesDictionaryDesurveyAlgorithmType", typeof(Desurvey))]
        public XPCollection<Desurvey> Desurveys { get { return GetCollection<Desurvey>("Desurveys"); } }
    }

}