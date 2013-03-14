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

    [Persistent(@"X_ProjectPlanTask")]
    public partial class ProjectPlanTask : XPLiteObject
    {
        Guid fProjectPlanTaskID;
        [Key(true)]
        public Guid ProjectPlanTaskID
        {
            get { return fProjectPlanTaskID; }
            set { SetPropertyValue<Guid>("ProjectPlanTaskID", ref fProjectPlanTaskID, value); }
        }
        ProjectPlan fProjectPlanID;
        [Association(@"ProjectPlanTaskReferencesProjectPlan")]
        public ProjectPlan ProjectPlanID
        {
            get { return fProjectPlanID; }
            set { SetPropertyValue<ProjectPlan>("ProjectPlanID", ref fProjectPlanID, value); }
        }
        ProjectPlanTask fParentProjectTaskID;
        [Association(@"ProjectPlanTaskReferencesProjectPlanTask")]
        public ProjectPlanTask ParentProjectTaskID
        {
            get { return fParentProjectTaskID; }
            set { SetPropertyValue<ProjectPlanTask>("ParentProjectTaskID", ref fParentProjectTaskID, value); }
        }
        string fProjectTaskName;
        [Size(50)]
        public string ProjectTaskName
        {
            get { return fProjectTaskName; }
            set { SetPropertyValue<string>("ProjectTaskName", ref fProjectTaskName, value); }
        }
        int fPriority;
        public int Priority
        {
            get { return fPriority; }
            set { SetPropertyValue<int>("Priority", ref fPriority, value); }
        }
        decimal fProgress;
        public decimal Progress
        {
            get { return fProgress; }
            set { SetPropertyValue<decimal>("Progress", ref fProgress, value); }
        }
        DateTime fStartDate;
        public DateTime StartDate
        {
            get { return fStartDate; }
            set { SetPropertyValue<DateTime>("StartDate", ref fStartDate, value); }
        }
        DateTime fStopDate;
        public DateTime StopDate
        {
            get { return fStopDate; }
            set { SetPropertyValue<DateTime>("StopDate", ref fStopDate, value); }
        }
        decimal fDurationManHours;
        public decimal DurationManHours
        {
            get { return fDurationManHours; }
            set { SetPropertyValue<decimal>("DurationManHours", ref fDurationManHours, value); }
        }
        bool fIsMilestone;
        public bool IsMilestone
        {
            get { return fIsMilestone; }
            set { SetPropertyValue<bool>("IsMilestone", ref fIsMilestone, value); }
        }
        string fComment;
        [Size(255)]
        public string Comment
        {
            get { return fComment; }
            set { SetPropertyValue<string>("Comment", ref fComment, value); }
        }
        [Association(@"ProjectPlanTaskReferencesProjectPlanTask", typeof(ProjectPlanTask))]
        public XPCollection<ProjectPlanTask> ProjectPlanTaskCollection { get { return GetCollection<ProjectPlanTask>("ProjectPlanTaskCollection"); } }
        [Association(@"ProjectPlanTaskResponseReferencesProjectPlanTask", typeof(ProjectPlanTaskResponse))]
        public XPCollection<ProjectPlanTaskResponse> ProjectPlanTaskResponses { get { return GetCollection<ProjectPlanTaskResponse>("ProjectPlanTaskResponses"); } }
        [Association(@"ProjectPlanTaskWorkerReferencesProjectPlanTask", typeof(ProjectPlanTaskWorker))]
        public XPCollection<ProjectPlanTaskWorker> ProjectPlanTaskWorkers { get { return GetCollection<ProjectPlanTaskWorker>("ProjectPlanTaskWorkers"); } }
    }

}