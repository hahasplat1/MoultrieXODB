using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using XODB.Module.BusinessObjects;
using Xstract.Import.LAS;
using Microsoft.Samples.EntityDataReader;

namespace XODB.Import.ImportUtils
{
    public class LasImportUtils
    {
        public LasImportUtils() { }


        internal void ImportLASFile(Xstract.Import.LAS.LASFile lasFile, string origFilename, ModelImportStatus mos, Guid currentProject, Action<string, double> UpdateStatus)
        {
            int li = origFilename.LastIndexOf("\\");
            string tempHoleIDa = origFilename.Substring(li);
            li = tempHoleIDa.LastIndexOf(".");
            string tempHoleID = tempHoleIDa.Substring(1, li - 1);
            int rowCounter = 0;
            // now try and get teh hole name from a header item.  Typically the header name might be in
            // WELL in the Well information header section
            string res = lasFile.LookupWellHeaderSection("WELL");
            if (res != null && res.Trim().Length > 0) {

                tempHoleID = res;
            }

            try
            {
                // here we need to create the Geophyiscs data row item
                var entityObj = new XODBC(BaseImportTools.XSTRING, null, false);
                //entityObj.AutoDetectChangesEnabled = false; //TODO: Exhaust this, should be faster now
                
                Geophysics xG = new Geophysics();
                xG.FileName = origFilename;
                Guid gg = Guid.NewGuid();
                xG.GeophysicsID = gg;

                Guid holeGuid = CollarQueries.FindHeaderGuid(tempHoleID, currentProject);
                Guid resHole = new Guid();
                if (!holeGuid.ToString().Equals(resHole.ToString()))
                {
                    xG.HeaderID = holeGuid;
                }
                Guid unitGuid = new Guid("2395DE56-8F6F-4B0C-806C-DD2606B9902B");
                UnitQueries uq = new UnitQueries();
                DictionaryUnit xu = uq.FindUnits("m");
                if (xu != null)
                {
                    unitGuid = xu.UnitID;
                }
                xG.DimensionUnitID = unitGuid;

                entityObj.Geophysics.AddObject(xG);



                Dictionary<string, Guid> metaDataIDLookup = new Dictionary<string, Guid>();
                // here we need to add a GeophysicsMetadata item for each column

                foreach (string s in lasFile.columnHeaders)
                {
                    Parameter xp = null;
                    xp = GetParameterIDFor(entityObj, "LAS data column", s);
                    if (xp == null)
                    {
                        xp = new Parameter();
                        Guid pg = Guid.NewGuid();
                        xp.ParameterID = pg;
                        xp.ParameterType = "LAS data column";
                        xp.ParameterName = s;

                        // TODO, add the unit as per the las file if present
                        entityObj.Parameters.AddObject(xp);
                        entityObj.SaveChanges();
                    }
                    GeophysicsMetadata xgm = new GeophysicsMetadata();
                    xgm.GeophysicsID = gg;
                    Guid gmid = Guid.NewGuid();
                    xgm.GeophysicsMetadataID = gmid;
                    xgm.Mnemonic = s;
                    xgm.ParameterID = xp.ParameterID;
                    entityObj.GeophysicsMetadatas.AddObject(xgm);
                    metaDataIDLookup.Add(s, gmid);
                }
                entityObj.SaveChanges();
                int insertCounter = 0;
                /// here we add the row data, one entry per depth & value into the GeophysicsData
                /// 

                // this is exceptionally slow with EF

                var bulkCopy = new SqlBulkCopy(BaseImportTools.XSTRING);
                bulkCopy.DestinationTableName = "X_GeophysicsData";
                var geoDataList = new List<GeophysicsData>();
                foreach (LASDataRow ldr in lasFile.dataRows)
                {
                    double depth = ldr.depth;
                    
                    for (int i = 0; i < ldr.rowData.Count(); i++)
                    {
                        GeophysicsData xd1 = new GeophysicsData();
                        string s = lasFile.columnHeaders[i];
                        xd1.GeophysicsDataID = Guid.NewGuid();
                        Guid g = new Guid();
                        bool found = metaDataIDLookup.TryGetValue(s, out g);
                        if (found)
                        {
                            xd1.GeophysicsMetadataID = g;
                        }
                        xd1.Dimension = (decimal)depth;
                        xd1.MeasurementValue = (decimal)ldr.rowData[i];

                        geoDataList.Add(xd1);

                        //entityObj.GeophysicsDatas.AddObject(xd1);
                    }
                    //if (insertCounter == 500) {
                    //    entityObj.SaveChanges();
                    //    insertCounter = 0;
                    //    entityObj = new XODBC(BaseImportTools.XSTRING, null, false);
                    //}
                    insertCounter++;
                    rowCounter++;
                }

                
                bulkCopy.WriteToServer(geoDataList.AsDataReader());

                //entityObj.SaveChanges();
             
              
            }
            catch (Exception ex) {
                mos.errorMessages.Add("Failed to complete import of LAS file: " + origFilename);
                mos.errorMessages.Add("Details: " + ex.Message.ToString());
            }
            mos.recordsAdded = rowCounter;
            
        }


      
     
        private Parameter GetParameterIDFor(XODBC entityObj, string paramType, string paramName)
        {
            Parameter res = null; ;
            IQueryable<Parameter> resGP = entityObj.Parameters.Where(c => c.ParameterType.Trim().Equals(paramType) && c.ParameterName.Trim().Equals(paramName));
            foreach (Parameter xx in resGP)
            {
                res = xx;
                break;
            }
            return res;
        }
    }
}
