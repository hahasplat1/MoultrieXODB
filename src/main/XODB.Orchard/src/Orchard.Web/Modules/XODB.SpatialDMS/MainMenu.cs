using System.Linq;
using System.Web.Routing;
using Orchard.Environment;
using Orchard.Localization;
using Orchard.UI.Navigation;

namespace XODB {
    public class MainMenu : INavigationProvider {
        private readonly Work<RequestContext> _requestContextAccessor;
        
        public MainMenu(Work<RequestContext> requestContextAccessor) {
            _requestContextAccessor = requestContextAccessor;
            T = NullLocalizer.Instance;
        }

        public Localizer T { get; set; }

        public string MenuName { get { return "main"; } }

        public void GetNavigation(NavigationBuilder builder)
        {
            builder.Add(menu =>
                menu.Add(T("SpatialDMS"), "4", item => item
                    .Action("Index", "User", new { area = "SpatialDMS" })));
        }
    }
}