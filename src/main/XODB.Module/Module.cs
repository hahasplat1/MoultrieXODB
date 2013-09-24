using System;
using System.Collections.Generic;

using DevExpress.ExpressApp;
using System.Reflection;
using DevExpress.ExpressApp.EF;

namespace XODB.Module
{
    public sealed partial class XODBModule : ModuleBase
    {
        public XODBModule()
        {
            InitializeComponent();
            ExportedTypeHelpers.AddExportedTypeHelper(new EFExportedTypeHelper());
        }

    }
}
