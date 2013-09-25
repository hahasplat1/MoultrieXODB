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

        public static string GetTableName<T>(this DbContext context) where T : class
        {
            ObjectContext objectContext = ((IObjectContextAdapter)context).ObjectContext;

            return objectContext.GetTableName<T>();
        }

        public static string GetTableName<T>(this ObjectContext context) where T : class
        {
            return GetTableName(context.CreateObjectSet<T>().ToTraceString());          
        }

        public static string GetTableName(this ObjectContext context, Type type)
        {
            var mos = context.GetType().GetMethod("CreateObjectSet", Type.EmptyTypes);
            var generic = mos.MakeGenericMethod(type);
            var o = generic.Invoke(context, null);
            var mts = o.GetType().GetMethod("ToTraceString");
            return GetTableName((string)mts.Invoke(o, null));
        }

        private static string GetTableName(string sql)
        {
            Regex regex = new Regex(@"FROM\s+(?<table>.+)\s+AS");
            Match match = regex.Match(sql);

            string table = match.Groups["table"].Value;
            int t1 = table.LastIndexOf('[');
            int t2 = table.LastIndexOf(']');
            if (t2>t1)
                table = table.Substring(t1+1, t2-t1-1);
            return table;
        }

     
    }
}
