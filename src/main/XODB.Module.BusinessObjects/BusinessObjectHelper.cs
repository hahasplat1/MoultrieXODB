using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Objects;
using System.Text.RegularExpressions;

namespace XODB.Module.BusinessObjects
{
    public static class BusinessObjectHelper
    {

        public static string GetTableName<T>(this DbContext context, bool onlyName=true) where T : class
        {
            ObjectContext objectContext = ((IObjectContextAdapter)context).ObjectContext;

            return objectContext.GetTableName<T>(onlyName);
        }

        public static string GetTableName<T>(this ObjectContext context, bool onlyName=true) where T : class
        {
            return GetTableName(context.CreateObjectSet<T>().ToTraceString(),onlyName);          
        }

        public static string GetTableName(this ObjectContext context, Type type, bool onlyName=true)
        {
            var mos = context.GetType().GetMethod("CreateObjectSet", Type.EmptyTypes);
            var generic = mos.MakeGenericMethod(type);
            var o = generic.Invoke(context, null);
            var mts = o.GetType().GetMethod("ToTraceString");
            return GetTableName((string)mts.Invoke(o, null), onlyName);
        }

        private static string GetTableName(string sql, bool onlyName=true)
        {
            Regex regex = new Regex(@"FROM\s+(?<table>.+)\s+AS");
            Match match = regex.Match(sql);

            string table = match.Groups["table"].Value;
            if (onlyName)
            {
                int t1 = table.LastIndexOf('[');
                int t2 = table.LastIndexOf(']');
                if (t2 > t1)
                    return table.Substring(t1 + 1, t2 - t1 - 1);
            }            
            return table;
        }

     
    }
}
