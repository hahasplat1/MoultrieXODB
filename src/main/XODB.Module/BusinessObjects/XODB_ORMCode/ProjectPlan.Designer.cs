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

    [Persistent(@"X_ProjectPlan")]
    public partial class ProjectPlan : XPLiteObject
    {
        Guid fProjectPlanID;
        [Key(true)]
        public Guid ProjectPlanID
        {
            get { return fProjectPlanID; }
            set { SetPropertyValue<Guid>("ProjectPlanID", ref fProjectPlanID, value); }
        }
        ProjectPlan fParentProjectPlanID;
        [Association(@"ProjectPlanReferencesProjectPlan")]
        public ProjectPlan ParentProjectPlanID
        {
            get { return fParentProjectPlanID; }
            set { SetPropertyValue<ProjectPlan>("ParentProjectPlanID", ref fParentProjectPlanID, value); }
        }
        string fProjectPlanName;
        [Size(50)]
        public string ProjectPlanName
        {
            get { return fProjectPlanName; }
            set { SetPropertyValue<string>("ProjectPlanName", ref fProjectPlanName, value); }
        }
        Contact fResponsibleContactID;
        [Association(@"ProjectPlanReferencesContact")]
        public Contact ResponsibleContactID
        {
            get { return fResponsibleContactID; }
            set { SetPropertyValue<Contact>("ResponsibleContactID", ref fResponsibleContactID, value); }
        }
        string fComment;
        [Size(255)]
        public string Comment
        {
            get { return fComment; }
            set { SetPropertyValue<string>("Comment", ref fComment, value); }
        }
        Project fProjectID;
        [Association(@"ProjectPlanReferencesProject")]
        public Project ProjectID
        {
            get { return fProjectID; }
            set { SetPropertyValue<Project>("ProjectID", ref fProjectID, value); }
        }
        int fVersion;
        public int Version
        {
            get { return fVersion; }
            set { SetPropertyValue<int>("Version", ref fVersion, value); }
        }
        Guid fVersionAntecedentID;
        public Guid VersionAntecedentID
        {
            get { return fVersionAntecedentID; }
            set { SetPropertyValue<Guid>("VersionAntecedentID", ref fVersionAntecedentID, value); }
        }
        int fVersionCertainty;
        public int VersionCertainty
        {
            get { return fVersionCertainty; }
            set { SetPropertyValue<int>("VersionCertainty", ref fVersionCertainty, value); }
        }
        Guid fVersionWorkflowInstanceID;
        public Guid VersionWorkflowInstanceID
        {
            get { return fVersionWorkflowInstanceID; }
            set { SetPropertyValue<Guid>("VersionWorkflowInstanceID", ref fVersionWorkflowInstanceID, value); }
        }
        Guid fVersionUpdatedBy;
        public Guid VersionUpdatedBy
        {
            get { return fVersionUpdatedBy; }
            set { SetPropertyValue<Guid>("VersionUpdatedBy", ref fVersionUpdatedBy, value); }
        }
        Guid fVersionDeletedBy;
        public Guid VersionDeletedBy
        {
            get { return fVersionDeletedBy; }
            set { SetPropertyValue<Guid>("VersionDeletedBy", ref fVersionDeletedBy, value); }
        }
        Guid fVersionOwnerContactID;
        public Guid VersionOwnerContactID
        {
            get { return fVersionOwnerContactID; }
            set { SetPropertyValue<Guid>("VersionOwnerContactID", ref fVersionOwnerContactID, value); }
        }
        Guid fVersionOwnerCompanyID;
        public Guid VersionOwnerCompanyID
        {
            get { return fVersionOwnerCompanyID; }
            set { SetPropertyValue<Guid>("VersionOwnerCompanyID", ref fVersionOwnerCompanyID, value); }
        }
        DateTime fVersionUpdated;
        public DateTime VersionUpdated
        {
            get { return fVersionUpdated; }
            set { SetPropertyValue<DateTime>("VersionUpdated", ref fVersionUpdated, value); }
        }
        [Association(@"ProjectPlanReferencesProjectPlan", typeof(ProjectPlan))]
        public XPCollection<ProjectPlan> ProjectPlanCollection { get { return GetCollection<ProjectPlan>("ProjectPlanCollection"); } }
        [Association(@"ProjectPlanTaskReferencesProjectPlan", typeof(ProjectPlanTask))]
        public XPCollection<ProjectPlanTask> ProjectPlanTasks { get { return GetCollection<ProjectPlanTask>("ProjectPlanTasks"); } }
    }

}
