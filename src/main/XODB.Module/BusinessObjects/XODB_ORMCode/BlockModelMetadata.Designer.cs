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

    [Persistent(@"X_BlockModelMetadata")]
    public partial class BlockModelMetadata : XPLiteObject
    {
        Guid fBlockModelMetadataID;
        [Key(true)]
        public Guid BlockModelMetadataID
        {
            get { return fBlockModelMetadataID; }
            set { SetPropertyValue<Guid>("BlockModelMetadataID", ref fBlockModelMetadataID, value); }
        }
        BlockModel fBlockModelID;
        [Association(@"BlockModelMetadataReferencesBlockModel")]
        public BlockModel BlockModelID
        {
            get { return fBlockModelID; }
            set { SetPropertyValue<BlockModel>("BlockModelID", ref fBlockModelID, value); }
        }
        Parameter fParameterID;
        [Association(@"BlockModelMetadataReferencesParameter")]
        public Parameter ParameterID
        {
            get { return fParameterID; }
            set { SetPropertyValue<Parameter>("ParameterID", ref fParameterID, value); }
        }
        string fBlockModelMetadataText;
        [Size(58)]
        public string BlockModelMetadataText
        {
            get { return fBlockModelMetadataText; }
            set { SetPropertyValue<string>("BlockModelMetadataText", ref fBlockModelMetadataText, value); }
        }
        decimal fBlockModelMetadataValue;
        public decimal BlockModelMetadataValue
        {
            get { return fBlockModelMetadataValue; }
            set { SetPropertyValue<decimal>("BlockModelMetadataValue", ref fBlockModelMetadataValue, value); }
        }
    }

}