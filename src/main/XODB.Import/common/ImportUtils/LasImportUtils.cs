using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading.Tasks;
using XODB.Module.BusinessObjects;
using Xstract.Import.LAS;
using System.Data.Objects.DataClasses;

namespace XODB.Import.ImportUtils
{
    public class LasImportUtils
    {
        public LasImportUtils() { }


        internal List<object> ImportLASFile(Xstract.Import.LAS.LASFile lasFile, string origFilename, ModelImportStatus mos, Guid currentProject, Action<string, double> UpdateStatus)
        {
            int li = origFilename.LastIndexOf("\\");
            string tempHoleIDa = origFilename.Substring(li);
            li = tempHoleIDa.LastIndexOf(".");
            string tempHoleID = tempHoleIDa.Substring(1, li - 1);
            int rowCounter = 0;
            // now try and get the hole name from a header item.  Typically the header name might be in
            // WELL in the Well information header section
            string res = lasFile.LookupWellHeaderSection("WELL");
            if (res != null && res.Trim().Length > 0) {

                tempHoleID = res;
            }

            List<object> dataList = new List<object>();
            try
            {
                // here we need to create the Geophyiscs data row item
                var entityObj = new XODBC(BaseImportTools.XSTRING, null, false);
                //entityObj.AutoDetectChangesEnabled = false; //TODO: Exhaust this, should be faster now

                var physDataList = new List<Geophysics>();
                //var fDataList = new List<XODB.Module.BusinessObjects.File>();
                var fdDataList = new List<FileData>();
                
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
                Guid unitGuid = new Guid("2395DE56-8F6F-4B0C-806C-DD2606B9902B"); //FIXME: Magic Number
                UnitQueries uq = new UnitQueries();
                DictionaryUnit xu = uq.FindUnits("m");
                if (xu != null)
                {
                    unitGuid = xu.UnitID;
                }
                xG.DimensionUnitID = unitGuid;
                xG.LasVersion = string.Format("{0:N1}",lasFile.versionValue);
                xG.LasWrap = lasFile.versionWrap;
                xG.LasNullValue = string.Format("{0:N2}",lasFile.nullValue);

                FileData fD = new FileData();
                FileStream sr = null;
                try
                {
                    sr = new FileStream(lasFile.filePath, FileMode.Open);
                }
                catch (FileNotFoundException fex)
                {

                }
                catch (Exception ex)
                {

                }

                XODB.Module.BusinessObjects.File F = new XODB.Module.BusinessObjects.File();
                F.LoadFromStream(lasFile.FileName(), sr);
                Guid fdGUID = Guid.NewGuid();
                fD.FileDataID = fdGUID;
                fD.ReferenceID = xG.GeophysicsID;
                fD.TableType = "X_Geophysics";
                fD.FileInfo = F;
                fD.FileName = F.FileName;
                fD.FileChecksum = Hash.ComputeHash(fD.FileBytes);
                fD.MimeType = MimeTypes.MimeTypeHelper.GetMimeTypeByFileName(fD.FileName);
                xG.OriginalFileDataID = fD.FileDataID;
                physDataList.Add(xG);
                fdDataList.Add(fD);
                //fDataList.Add(F);
                //entityObj.Geophysics.AddObject(xG);
                //entityObj.SaveChanges();

                // here we need to add a GeophysicsMetadata item for each column
                Dictionary<string, Guid> metaDataIDLookup = new Dictionary<string, Guid>();
                //var bulkCopyUnit = new SqlBulkCopy(BaseImportTools.XSTRING);
                //bulkCopyUnit.DestinationTableName = "X_DictionaryUnit";
                var unitDataList = new List<DictionaryUnit>();
                //var bulkCopyParam = new SqlBulkCopy(BaseImportTools.XSTRING);
                //bulkCopyParam.DestinationTableName = "X_Parameter";
                var paramDataList = new List<Parameter>();
                //var bulkCopyMeta = new SqlBulkCopy(BaseImportTools.XSTRING);
                //bulkCopyMeta.DestinationTableName = "X_GeophysicsMetaData";
                var metaDataList = new List<GeophysicsMetadata>();

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

                        //test to see if we already have the unit
                        string splitter = s.Split(new char[] { '.' }, StringSplitOptions.RemoveEmptyEntries).LastOrDefault().Trim();
                        UnitQueries uq2 = new UnitQueries();
                        DictionaryUnit xu2 = uq2.FindUnits(splitter);
                        DictionaryUnit unitFound = null;

                        //test to see if we already have added a unit into the list
                        if (unitDataList.Count > 0)
                        {
                            unitFound = unitDataList.Where(c => c.StandardUnitName == splitter).FirstOrDefault();
                            //add the unit id to the parameter list
                            if (unitFound != null)
                            {
                                xp.UnitID = unitFound.UnitID;
                                xp.Unit = unitFound;
                            }
                        }
                        if (xu2 == null && unitFound == null)
                        {
                            //create new unit here store it and pass to parameters
                            Guid ug = Guid.NewGuid();
                            DictionaryUnit du = new DictionaryUnit();
                            
                            du.UnitID = ug;
                            du.StandardUnitName = splitter;
                            du.CoalUnitName = splitter;
                            du.StrictlySI = false;
                            unitDataList.Add(du);
                            //add the unit id to the parameter object
                            xp.UnitID = du.UnitID;
                            xp.Unit = du;
                            //entityObj.DictionaryUnits.AddObject(du);
                            //entityObj.SaveChanges();
                        }
                        paramDataList.Add(xp);
                        //entityObj.Parameters.AddObject(xp);
                        //entityObj.SaveChanges();
                    }
                    GeophysicsMetadata xgm = new GeophysicsMetadata();
                    xgm.GeophysicsID = gg;
                    Guid gmid = Guid.NewGuid();
                    xgm.GeophysicsMetadataID = gmid;
                    //xgm.Unit = xp.Unit.StandardUnitName;
                    xgm.Mnemonic = s;
                    xgm.ParameterID = xp.ParameterID;
                    metaDataList.Add(xgm);
                    //entityObj.GeophysicsMetadatas.AddObject(xgm);
                    metaDataIDLookup.Add(s, gmid);
                }
                //non async so we ensure the data gets written in the correct order
                //bulkCopyUnit.WriteToServer(unitDataList.AsDataReader());
                //bulkCopyParam.WriteToServer(paramDataList.AsDataReader());
                //bulkCopyMeta.WriteToServer(metaDataList.AsDataReader());
                //entityObj.SaveChanges();
                
                int insertCounter = 0;
                //var bulkCopyData = new SqlBulkCopy(BaseImportTools.XSTRING);
                //bulkCopyData.DestinationTableName = "X_GeophysicsData";
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
                    }
                    insertCounter++;
                    rowCounter++;
                }
                //async here as all prereqs should be inplace, blast the data in, need to handle this better on program exit
                //on exit test that all waiting sql server threads have completed
                //bulkCopyData.WriteToServerAsync(geoDataList.AsDataReader());

                dataList.Add(fdDataList);
                dataList.Add(physDataList.ToList());
                dataList.Add(unitDataList);
                dataList.Add(paramDataList);
                dataList.Add(metaDataList);
                dataList.Add(geoDataList);
                //IEnumerable<EntityObject> dataList = l.ConvertAll(obj => (EntityObject)obj);
                    //dataList.Concat(physDataList, fdDataList, unitDataList, paramDataList, metaDataIDLookup, geoDataList);
                //dataList = dataList.Concat(physDataList);
                //dataList.Concat(fdDataList);
                //dataList.Concat(unitDataList);
                //dataList.Concat(paramDataList);
                //dataList.Concat(metaDataList);
                //dataList.Concat(geoDataList);
            }
            catch (Exception ex) {
                mos.errorMessages.Add("Failed to complete import of LAS file: " + origFilename);
                mos.errorMessages.Add("Details: " + ex.Message.ToString());
                if (ex.InnerException != null)
                    mos.errorMessages.Add("Inner Exception: " + ex.InnerException.Message.ToString());
                mos.errorMessages.Add("Row: " + rowCounter);
            }
            mos.recordsAdded = rowCounter;
            return dataList;
        }

        private Parameter GetParameterIDFor(XODBC entityObj, string paramType, string paramName)
        {
            Parameter res = null;
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
