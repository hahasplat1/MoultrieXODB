using System;
using System.Linq;
using System.Transactions;
using System.Collections.Generic;
using System.Web.Mvc;
using Orchard.Localization;
using Orchard;
using Orchard.Themes;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.Mvc;
using DevExpress.Data;
using Orchard.Logging;
using Orchard.Core.Contents.Controllers;
using Orchard.Mvc;
using System.Threading.Tasks;
using ImpromptuInterface;

namespace XODB.SpatialDMS.Controllers {
    
    public class UserController : Controller {
        public IOrchardServices Services { get; set; }

        public UserController(IOrchardServices services) {
            Services = services;
            T = NullLocalizer.Instance;
        }

        public Localizer T { get; set; }

        public ActionResult Index()
        {
            return View();
        }
    }
}
