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

    [Persistent(@"X_DictionaryColour")]
    public partial class DictionaryColour : XPLiteObject
    {
        Guid fColourID;
        [Key(true)]
        public Guid ColourID
        {
            get { return fColourID; }
            set { SetPropertyValue<Guid>("ColourID", ref fColourID, value); }
        }
        string fStandardColourName;
        [Indexed(Name = @"IDictionaryColour", Unique = true)]
        [Size(16)]
        public string StandardColourName
        {
            get { return fStandardColourName; }
            set { SetPropertyValue<string>("StandardColourName", ref fStandardColourName, value); }
        }
        string fCoalColourName;
        [Size(16)]
        public string CoalColourName
        {
            get { return fCoalColourName; }
            set { SetPropertyValue<string>("CoalColourName", ref fCoalColourName, value); }
        }
        string fGoldColourName;
        [Size(16)]
        public string GoldColourName
        {
            get { return fGoldColourName; }
            set { SetPropertyValue<string>("GoldColourName", ref fGoldColourName, value); }
        }
        string fCustomColourName;
        [Size(16)]
        public string CustomColourName
        {
            get { return fCustomColourName; }
            set { SetPropertyValue<string>("CustomColourName", ref fCustomColourName, value); }
        }
        string fDescription;
        [Size(255)]
        public string Description
        {
            get { return fDescription; }
            set { SetPropertyValue<string>("Description", ref fDescription, value); }
        }
        [Association(@"LithologyReferencesDictionaryColour", typeof(Lithology))]
        public XPCollection<Lithology> Lithologys { get { return GetCollection<Lithology>("Lithologys"); } }
    }

}