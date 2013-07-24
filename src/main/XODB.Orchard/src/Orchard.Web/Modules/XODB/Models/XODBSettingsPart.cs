using System.ComponentModel.DataAnnotations;
using Orchard.ContentManagement.Records;
using Orchard.ContentManagement;

namespace XODB.Models {
    
    public class XODBSettingsPart : ContentPart<XODBSettingsPartRecord> {
        public string UploadAllowedFileTypeWhitelist {
            get { return Record.UploadAllowedFileTypeWhitelist; }
            set { Record.UploadAllowedFileTypeWhitelist = value; }
        }
    }
    
    public class XODBSettingsPartRecord : ContentPartRecord {
        internal const string DefaultWhitelist = "xodb zip";
        private string _whitelist = DefaultWhitelist;

        [StringLength(255)]
        public virtual string UploadAllowedFileTypeWhitelist {
            get { return _whitelist; }
            set { _whitelist = value; }
        }
    }
}