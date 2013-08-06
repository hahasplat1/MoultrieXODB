using JetBrains.Annotations;
using Orchard.ContentManagement;
using Orchard.Data;
using Orchard.ContentManagement.Handlers;
using Orchard.Localization;
using XODB.Models;

namespace XODB.Handlers {
    [UsedImplicitly]
    public class XODBSettingsPartHandler : ContentHandler {
        public XODBSettingsPartHandler(IRepository<XODBSettingsPartRecord> repository) {
            T = NullLocalizer.Instance;
            Filters.Add(new ActivatingFilter<XODBSettingsPart>("Site"));
            Filters.Add(StorageFilter.For(repository));
            Filters.Add(new TemplateFilterForRecord<XODBSettingsPartRecord>("Settings", "Parts/XODB.Settings", "business"));
        }

        public Localizer T { get; set; }

        protected override void GetItemMetadata(GetContentItemMetadataContext context) {
            if (context.ContentItem.ContentType != "Site")
                return;
            base.GetItemMetadata(context);
            context.Metadata.EditorGroupInfo.Add(new GroupInfo(T("Business")));
        }
    }
}