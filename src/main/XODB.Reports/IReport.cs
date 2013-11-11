using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DevExpress.XtraReports.UI;

namespace XODB.Reports
{
    public interface IReport
    {
        Dictionary<string,string> Filter { get; set; }

    }
}