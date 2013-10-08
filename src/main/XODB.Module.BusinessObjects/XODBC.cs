using System;
using System.ComponentModel;
using System.Data.EntityClient;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.Runtime.Serialization;
using System.Xml.Serialization;
using System.Reflection;

namespace XODB.Module.BusinessObjects
{
    public partial class XODBC : ObjectContext
    {
        public const string EF_METADATA = "res://XODB.Module.BusinessObjects/XODB.csdl|res://XODB.Module.BusinessObjects/XODB.ssdl|res://XODB.Module.BusinessObjects/XODB.msl";
        
        public XODBC(string providerConnectionString, string metadata, bool checkPrimaryKey = true) 
            : base((string.IsNullOrWhiteSpace(metadata)) ? GetEnityConnectionString(providerConnectionString, EF_METADATA) : GetEnityConnectionString(providerConnectionString, metadata), "XODBC" ) 
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            _checkPrimaryKey = checkPrimaryKey;
            if (_checkPrimaryKey)
                OnContextCreated();
        }

        private bool _checkPrimaryKey = true;
        public bool CheckPrimaryKey
        {
            get { return _checkPrimaryKey; }
            set
            {
                if (value != _checkPrimaryKey)
                {
                    if (value)
                        this.SavingChanges += XODBC_SavingChanges;
                    else
                        this.SavingChanges -= XODBC_SavingChanges;
                }
                _checkPrimaryKey = value;
            }
        }

        public static string GetEnityConnectionString(string providerConnectionString, string entityType, string assembly, string nameSpace)
        {
            if (string.IsNullOrWhiteSpace(assembly))
                assembly = "*";
            if (string.IsNullOrWhiteSpace(nameSpace))
                nameSpace = "Models";
            System.Data.SqlClient.SqlConnectionStringBuilder scsb = new System.Data.SqlClient.SqlConnectionStringBuilder(providerConnectionString);
            EntityConnectionStringBuilder ecb = new EntityConnectionStringBuilder();
            ecb.Metadata = string.Format(@"res://{0}/{1}.{2}.csdl|res://{0}/{1}.{2}.ssdl|res://{0}/{1}.{2}.msl", assembly, nameSpace, entityType);
            ecb.Provider = "System.Data.SqlClient";
            ecb.ProviderConnectionString = scsb.ConnectionString;
            return ecb.ConnectionString;
        }

        public static string GetEnityConnectionString(string providerConnectionString, string entityType, string directory)
        {
            System.Data.SqlClient.SqlConnectionStringBuilder scsb = new System.Data.SqlClient.SqlConnectionStringBuilder(providerConnectionString);
            EntityConnectionStringBuilder ecb = new EntityConnectionStringBuilder();
            ecb.Metadata = string.Format(@"metadata={0}\{1}.csdl|{0}\{1}.ssdl|{0}\{1}.msl", directory, entityType);
            ecb.Provider = "System.Data.SqlClient";
            ecb.ProviderConnectionString = scsb.ConnectionString;
            return ecb.ConnectionString;
        }

        public static string GetEnityConnectionString(string providerConnectionString, string metadata)
        {
            System.Data.SqlClient.SqlConnectionStringBuilder scsb = new System.Data.SqlClient.SqlConnectionStringBuilder(providerConnectionString);
            EntityConnectionStringBuilder ecb = new EntityConnectionStringBuilder();
            ecb.Metadata = metadata;
            ecb.Provider = "System.Data.SqlClient";
            ecb.ProviderConnectionString = scsb.ConnectionString;
            return ecb.ConnectionString;
        }
        partial void OnContextCreated()
        {
            this.SavingChanges += XODBC_SavingChanges;
        }

        void XODBC_SavingChanges(object sender, EventArgs e)
        {

            var c = this.ObjectStateManager
            .GetObjectStateEntries(System.Data.EntityState.Added)
            .Select(entry => (System.Data.Objects.DataClasses.EntityObject)entry.Entity);

            var t = this.MetadataWorkspace.GetEntityContainer(this.DefaultContainerName, System.Data.Metadata.Edm.DataSpace.CSpace);
            foreach (var o in c)
            {
                var key = t.BaseEntitySets[o.EntityKey.EntitySetName].ElementType.KeyMembers[0];
                if (((System.Data.Metadata.Edm.PrimitiveType)key.TypeUsage.EdmType).ClrEquivalentType == typeof(Guid))
                {
                    PropertyInfo prop = o.GetType().GetProperty(key.Name, BindingFlags.Public | BindingFlags.Instance);
                    if (null != prop && prop.CanWrite && (Guid)prop.GetValue(o) == Guid.Empty)
                    {
                        prop.SetValue(o, Guid.NewGuid(), null);
                    }
                }
            }
        }
    }

}
