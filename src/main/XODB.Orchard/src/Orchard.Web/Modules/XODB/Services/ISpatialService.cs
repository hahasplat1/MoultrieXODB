using System;
namespace XODB.Services
{
    interface ISpatialService
    {
        bool IsAuthorised(bool checkLicense, Authority.ActionType action, string dataType, string tableType, string field, Guid? referenceID, Guid? applicationID, Guid? licenseID, Guid? assetID, Guid? modelID, Guid? partID, Guid? companyID, Guid? contactID, Guid? projectID, Guid? roleID);
    }
}
