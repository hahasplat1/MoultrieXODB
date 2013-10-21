using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using XODB.Module.BusinessObjects;

namespace XODB.Import.ImportUtils
{
    public class UnitQueries
    {


        internal DictionaryUnit FindUnits(string theUnit)
        {
            var entityObj = new XODBC(BaseImportTools.XSTRING, null);
            
            DictionaryUnit xd = (from c in entityObj.DictionaryUnits where c.StandardUnitName.Trim().Equals(theUnit) select c).FirstOrDefault();
            return xd;

        }
    }
}
