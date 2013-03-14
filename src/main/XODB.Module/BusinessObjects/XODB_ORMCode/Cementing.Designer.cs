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

    [Persistent(@"X_Cementing")]
    public partial class Cementing : XPLiteObject
    {
        Guid fCementingID;
        [Key(true)]
        public Guid CementingID
        {
            get { return fCementingID; }
            set { SetPropertyValue<Guid>("CementingID", ref fCementingID, value); }
        }
        Header fHeaderID;
        [Association(@"CementingReferencesHeader")]
        public Header HeaderID
        {
            get { return fHeaderID; }
            set { SetPropertyValue<Header>("HeaderID", ref fHeaderID, value); }
        }
        decimal fFromDepth;
        public decimal FromDepth
        {
            get { return fFromDepth; }
            set { SetPropertyValue<decimal>("FromDepth", ref fFromDepth, value); }
        }
        decimal fToDepth;
        public decimal ToDepth
        {
            get { return fToDepth; }
            set { SetPropertyValue<decimal>("ToDepth", ref fToDepth, value); }
        }
        DateTime fCementingDate;
        public DateTime CementingDate
        {
            get { return fCementingDate; }
            set { SetPropertyValue<DateTime>("CementingDate", ref fCementingDate, value); }
        }
        decimal fVolume;
        public decimal Volume
        {
            get { return fVolume; }
            set { SetPropertyValue<decimal>("Volume", ref fVolume, value); }
        }
        string fComment;
        [Size(SizeAttribute.Unlimited)]
        public string Comment
        {
            get { return fComment; }
            set { SetPropertyValue<string>("Comment", ref fComment, value); }
        }
        [Association(@"CompositeReferencesCementing", typeof(Composite))]
        public XPCollection<Composite> Composites { get { return GetCollection<Composite>("Composites"); } }
    }

}