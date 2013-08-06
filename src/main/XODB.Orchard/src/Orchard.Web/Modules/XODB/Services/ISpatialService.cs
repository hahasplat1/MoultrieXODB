using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using Orchard;
using XODB.Models;
using System.ServiceModel;

namespace XODB.Services
{
    [ServiceContract]
    public interface ISpatialService : IDependency
    {
        [OperationContract]
        void TestSpatial();

    }
}
