using System;
using System.IO;
using System.Reflection;
using DevExpress.ExpressApp;
using DevExpress.ExpressApp.Updating;
using DevExpress.Xpo;
using DevExpress.Data.Filtering;
using DevExpress.Persistent.BaseImpl;
using DevExpress.ExpressApp.Security;
using Ionic.Zip;

namespace XODB.Module.DatabaseUpdate
{
    public class Updater : ModuleUpdater
    {
        public static int CurrentVersion { get { return 3; } }
        public Updater(IObjectSpace objectSpace, Version currentDBVersion) : base(objectSpace, currentDBVersion) { }
        public override void UpdateDatabaseAfterUpdateSchema()
        {
            base.UpdateDatabaseAfterUpdateSchema();
        }

        public override void UpdateDatabaseBeforeUpdateSchema()
        {
            object o = null;
            if (IsTableExists("X_PrivateData"))
                o = ExecuteScalarCommand("select [value] from X_PrivateData where UniqueID='XODBSchemaVersion'", false);
            int xodbSchemaVersion = (o == null) ? -1 : Convert.ToInt32(o);
            if (xodbSchemaVersion == -1)
            {
                ExecuteNonQueryCommand(Properties.Resources.XODBSchema1, false);
                ExecuteNonQueryCommand(Properties.Resources.XODBSchema1Data, false);
            }
            else if (xodbSchemaVersion != CurrentVersion && System.Windows.Forms.Application.ProductName.Contains("Win") && System.Windows.Forms.Application.ProductName.Contains("XODB"))
            {
                //Do backup
                try
                {
                    var f = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "xodb.bak");
                    foreach (var s in string.Format(Properties.Resources.XODBBackup, f).Split(new string[] { "GO" }, StringSplitOptions.RemoveEmptyEntries)) ExecuteNonQueryCommand(s, false);
                }
                catch { }
            }
            if (xodbSchemaVersion < 2)
                foreach (var s in Properties.Resources.XODBSchema2.Split(new string[] { "GO" }, StringSplitOptions.RemoveEmptyEntries)) ExecuteNonQueryCommand(s, true);
            if (xodbSchemaVersion < 3)
                foreach (var s in Properties.Resources.XODBSchema3.Split(new string[] { "GO" }, StringSplitOptions.RemoveEmptyEntries)) ExecuteNonQueryCommand(s, true); //This may have errors
            if (xodbSchemaVersion < 4)
            {
                using (FileStream fs = new FileStream(string.Format(@"{0}\Resources\{1}", AppDomain.CurrentDomain.BaseDirectory, "v4.sql.zip"), FileMode.Open, FileAccess.Read))
                {
                    // extract file to a temp location
                    using (var fileInflater = ZipFile.Read(fs))
                    {
                        foreach (ZipEntry entry in fileInflater)
                        {
                            if (entry == null) { continue; }

                            if (!entry.IsDirectory && !string.IsNullOrEmpty(entry.FileName))
                            {
                                var paragraph = "";
                                using (Stream stream = entry.OpenReader())
                                using (StreamReader sr = new StreamReader(stream))
                                {
                                    while (sr.Peek() >= 0)
                                    {
                                        var line = sr.ReadLine();
                                        if (line.Trim().ToUpper() == "GO")
                                        {
                                            ExecuteNonQueryCommand(paragraph, true);
                                            paragraph = "";
                                        }
                                        paragraph += string.Format("{0}\r\n", line);
                                    }
                                }
                                if (paragraph.Length > 0)
                                    ExecuteNonQueryCommand(paragraph, true);
                            }
                            break; // Only handle 1 file
                        }
                    }
                }
            }
             

            //Reboot
            try
            {
                if (xodbSchemaVersion != CurrentVersion && System.Windows.Forms.Application.ProductName.Contains("Win") && System.Windows.Forms.Application.ProductName.Contains("XODB"))
                {
                    System.Diagnostics.Process.Start(System.Windows.Forms.Application.ExecutablePath);
                    System.Diagnostics.Process.GetCurrentProcess().Kill();
                }
            }
            catch { }
            base.UpdateDatabaseBeforeUpdateSchema();
        }

        protected override System.Data.IDbCommand CreateCommand(string commandText)
        {
            return base.CreateCommand(commandText);
        }

    }
}
