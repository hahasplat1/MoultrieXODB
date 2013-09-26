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
                    if (null != prop && prop.CanWrite)
                    {
                        prop.SetValue(o, Guid.NewGuid(), null);
                    }
                }
            }
        }
    }

}
