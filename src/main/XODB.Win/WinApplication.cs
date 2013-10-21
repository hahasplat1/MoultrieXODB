using System;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.ExpressApp.Win;
using DevExpress.ExpressApp.Updating;
using DevExpress.ExpressApp;
using System.Data.SqlClient;
using XODB.Module.BusinessObjects;
using DevExpress.ExpressApp.EF;
using DevExpress.ExpressApp.DC;
using DevExpress.ExpressApp.Xpo;
using System.Configuration;
namespace XODB.Win
{
    public partial class XODBWindowsFormsApplication : WinApplication
    {
        public XODBWindowsFormsApplication()
        {
            InitializeComponent();
            DelayedViewItemsInitialization = true;
        }

        protected override void CreateDefaultObjectSpaceProvider(CreateCustomObjectSpaceProviderEventArgs args)
        {
            args.ObjectSpaceProviders.Add(new EFObjectSpaceProvider(typeof(XODBC), (TypesInfo)TypesInfo, null, args.ConnectionString, "res://XODB.Module.BusinessObjects/XODB.csdl|res://XODB.Module.BusinessObjects/XODB.ssdl|res://XODB.Module.BusinessObjects/XODB.msl", "System.Data.SqlClient"));
            //args.ObjectSpaceProviders.Add(new EFObjectSpaceProviderCF(typeof(XODBC), (TypesInfo)TypesInfo, null, args.ConnectionString));
            args.ObjectSpaceProviders.Add(new XPObjectSpaceProvider(args.ConnectionString, null));            
        }
        private void XODBWindowsFormsApplication_DatabaseVersionMismatch(object sender, DevExpress.ExpressApp.DatabaseVersionMismatchEventArgs e)
        {
#if EASYTEST
			e.Updater.Update();
			e.Handled = true;
#else
            if (true || System.Diagnostics.Debugger.IsAttached)
            {
                var ud = ConfigurationManager.AppSettings.Get("XODBUpdateData");
                bool bud;
                if (bool.TryParse(ud, out bud))
                    XODB.Module.DatabaseUpdate.Updater.UpdateData = bud;
                var ex = e.Updater.CheckCompatibility();
                if (ex is CompatibilityUnableToOpenDatabaseError && ex.Exception is SqlException)
                {
                    XODB.Module.DatabaseUpdate.Updater.RestoreSQLFromZip(this.ConnectionString);
                }
                SqlConnection.ClearAllPools();
                e.Updater.ForceUpdateDatabase = true;
                this.DatabaseUpdateMode = DevExpress.ExpressApp.DatabaseUpdateMode.UpdateDatabaseAlways;
                e.Updater.Update();
                e.Handled = true;
            }
            else
            {
                throw new InvalidOperationException(
                    "The application cannot connect to the specified database, because the latter doesn't exist or its version is older than that of the application.\r\n" +
                    "This error occurred  because the automatic database update was disabled when the application was started without debugging.\r\n" +
                    "To avoid this error, you should either start the application under Visual Studio in debug mode, or modify the " +
                    "source code of the 'DatabaseVersionMismatch' event handler to enable automatic database update, " +
                    "or manually create a database using the 'DBUpdater' tool.\r\n" +
                    "Anyway, refer to the 'Update Application and Database Versions' help topic at http://www.devexpress.com/Help/?document=ExpressApp/CustomDocument2795.htm " +
                    "for more detailed information. If this doesn't help, please contact our Support Team at http://www.devexpress.com/Support/Center/");
            }
#endif
        }
        private void XODBWindowsFormsApplication_CustomizeLanguagesList(object sender, CustomizeLanguagesListEventArgs e)
        {
            string userLanguageName = System.Threading.Thread.CurrentThread.CurrentUICulture.Name;
            if (userLanguageName != "en-US" && e.Languages.IndexOf(userLanguageName) == -1)
            {
                e.Languages.Add(userLanguageName);
            }
        }
    }
}
