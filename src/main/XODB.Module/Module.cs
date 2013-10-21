using System;
using System.Collections.Generic;
using DevExpress.ExpressApp;
using System.Reflection;
using DevExpress.ExpressApp.EF;
using DevExpress.ExpressApp;
using DevExpress.ExpressApp.Model;
using XODB.Module.Extenders;

namespace XODB.Module
{
    public sealed partial class XODBModule : ModuleBase
    {
        public XODBModule()
        {
            InitializeComponent();
            ExportedTypeHelpers.AddExportedTypeHelper(new EFExportedTypeHelper());
        }

        public override void ExtendModelInterfaces(ModelInterfaceExtenders extenders)
        {
            base.ExtendModelInterfaces(extenders);
            extenders.Add<IModelListView, IModelListViewExtender>();
        }

    }
}
