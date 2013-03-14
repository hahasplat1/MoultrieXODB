﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XODB.Services;
using Orchard.Media.Models;

namespace XODB.Helpers
{
    public static class BusinessHelper
    {
        public static SelectList GetFileNameList(this IBlockModelService o)
        {
            return new SelectList(o.GetNewBlockModelFiles().Select(x => new { Value = x.FolderName + @"\" + x.Name, Text = x.Name }).ToArray(), "Value", "Text");
        }


        public static SelectList GetFormatFileNameList(this IBlockModelService o)
        {
            return new SelectList(o.GetNewFormatFiles().Select(x => new { Value = x.FolderName + @"\" + x.Name, Text = x.Name }).ToArray(), "Value", "Text");
        }

        public static SelectList GetUpdatedModelList(this IBlockModelService o)
        {
            return new SelectList(o.GetUpdateFileNameList().Select(x => new { Value = x.FolderName + @"\" + x.Name, Text = x.Name }).ToArray(), "Value", "Text");
        }


        public static SelectList GetModelList(this IBlockModelService o)
        {
            return new SelectList(o.GetModels().Select(x => new { Value = x.BlockModelID, Text = x.Alias }), "Value", "Text");
        }

        public static SelectList GetModelParameterList(this IBlockModelService o, Guid modelID)
        {
            return new SelectList(o.GetModelParameters(modelID).Select(x => new { Value = x.Item2.BlockModelMetadataID, Text = x.Item1.DefaultParameterText }), "Value", "Text");
        }

        public static SelectList GetModelDomainsList(this IBlockModelService o, Guid modelID)
        {
            var m = o.GetModelDomains(modelID);
            if (m != null)
                return new SelectList(m.Select(x => new { Value = x.Item1 + "," + x.Item2, Text = x}), "Value", "Text");
            else return new SelectList( new SelectListItem[] {} );
        }

        public static SelectList GetProjectList(this IProjectsService o)
        {
            return new SelectList(o.GetProjects().Select(x => new { Value = x.ProjectID, Text = string.Format("{0} {1}", x.ProjectCode, x.ProjectName) }).OrderBy(x=>x.Text).ToArray(), "Value", "Text");
        }

        public static SelectList GetStagesList(this IProjectsService o, Guid id)
        {
            return new SelectList(o.GetStages(id).Select(x => new { Value = x.ProjectPlanTaskID, Text = string.Format("{0}", x.ProjectTaskName) }).ToArray(), "Value", "Text");
        }

        public static SelectList GetUnitsList(this IParametersService o)
        {
            return new SelectList(o.GetUnits().Select(x => new { Value = x.UnitID, Text = string.Format("{0}", x.StandardUnitName) }).ToArray(), "Value", "Text");
        }

        public static SelectList GetContactList(this IUsersService o)
        {
            return new SelectList(o.GetContacts().Select(x => new {  Value = x.ContactID, Text = x.ContactName }), "Value", "Text");
        }
                
        
    }
}