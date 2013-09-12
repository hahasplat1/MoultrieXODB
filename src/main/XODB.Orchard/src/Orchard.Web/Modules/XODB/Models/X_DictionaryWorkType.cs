//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace XODB.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class X_DictionaryWorkType
    {
        public X_DictionaryWorkType()
        {
            this.X_DictionaryWorkTypeRelation = new HashSet<X_DictionaryWorkTypeRelation>();
            this.X_DictionaryWorkTypeRelation1 = new HashSet<X_DictionaryWorkTypeRelation>();
        }
    
        public System.Guid WorkTypeID { get; set; }
        public Nullable<System.Guid> ProfessionID { get; set; }
        public Nullable<System.Guid> WorkTypeClassID { get; set; }
        public string WorkTypeName { get; set; }
        public string WorkTypeDescription { get; set; }
        public string FullDescription { get; set; }
        public byte[] Thumbnail { get; set; }
        public Nullable<System.Guid> OriginalFileDataID { get; set; }
        public int Version { get; set; }
        public Nullable<System.Guid> VersionAntecedentID { get; set; }
        public Nullable<int> VersionCertainty { get; set; }
        public Nullable<System.Guid> VersionWorkflowInstanceID { get; set; }
        public Nullable<System.Guid> VersionUpdatedBy { get; set; }
        public Nullable<System.Guid> VersionDeletedBy { get; set; }
        public Nullable<System.Guid> VersionOwnerContactID { get; set; }
        public Nullable<System.Guid> VersionOwnerCompanyID { get; set; }
        public Nullable<System.DateTime> VersionUpdated { get; set; }
    
        public virtual X_DictionaryWorkType X_DictionaryWorkType1 { get; set; }
        public virtual X_DictionaryWorkType X_DictionaryWorkType2 { get; set; }
        public virtual ICollection<X_DictionaryWorkTypeRelation> X_DictionaryWorkTypeRelation { get; set; }
        public virtual ICollection<X_DictionaryWorkTypeRelation> X_DictionaryWorkTypeRelation1 { get; set; }
    }
}
