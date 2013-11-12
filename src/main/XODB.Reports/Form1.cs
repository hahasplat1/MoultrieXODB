using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraReports.UI;

using System.IO;

namespace XODB.Reports
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            //XtraReport1 report = new XtraReport1();

            var report = new ReportStub(new ReportStub.DataProvider()) { DataAdapter = null };
            //report.DataSourceSchema = "C:\\temp\\myDataSourceSchema.xml";
            this.xrDesignPanel1.OpenReport(report);
            //report.DataSourceSchema = File.ReadAllText("C:\\temp\\myDataSourceSchema.xml");
        }


        private void barSubItem15_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            XtraReport r = this.xrDesignPanel1.Report;
            Form2 frm = new Form2(r.FilterString);
            frm.ShowDialog();
            this.xrDesignPanel1.Report.FilterString = frm.Criteria;
        }
    }
}