using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DevExpress.XtraReports.UI;

namespace WindowsApplication1
{
    public interface IReport
    {
        Dictionary<string,string> Filter { get; set; }

    }
}