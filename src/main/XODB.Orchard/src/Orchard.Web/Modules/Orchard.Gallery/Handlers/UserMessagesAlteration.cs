﻿using System;
using Orchard.Gallery.Interfaces;
using Orchard.Localization;
using Orchard.Messaging.Events;
using Orchard.Messaging.Models;
using Orchard.ContentManagement;
using Orchard.Settings;
using Orchard.Users.Models;

namespace Orchard.Gallery.Handlers {
    public class UserMessagesAlteration : IMessageEventHandler {
        private readonly IContentManager _contentManager;
        private readonly ISiteService _siteService;
        private readonly IUserkeyService _userkeyService;

        public UserMessagesAlteration(IContentManager contentManager, ISiteService siteService, IUserkeyService userkeyService) {
            _contentManager = contentManager;
            _siteService = siteService;
            _userkeyService = userkeyService;
            T = NullLocalizer.Instance;
        }

        public Localizer T { get; set; }

        public void Sending(MessageContext context) {
            var contentItem = _contentManager.Get(context.Recipient.Id);
            if ( contentItem == null )
                return;

            var recipient = contentItem.As<UserPart>();
            if ( recipient == null )
                return;

            if (context.Type == MessageTypes.Validation) {
                var registeredWebsite = _siteService.GetSiteSettings().As<RegistrationSettingsPart>().ValidateEmailRegisteredWebsite;
                var contactEmail = _siteService.GetSiteSettings().As<RegistrationSettingsPart>().ValidateEmailContactEMail;
                var userKey = _userkeyService.GetAccessKeyForUser(context.Recipient.Id);

                context.MailMessage.Subject = T("Verification E-Mail").Text;
                context.MailMessage.Body =
                    T("Thank you for registering with {0}.<br/><br/><br/><b>Final Step</b><br/>To verify that you own this e-mail address, please click the following link:<br/><a href=\"{1}\">{1}</a><br/><br/><b>Troubleshooting:</b><br/>If clicking on the link above does not work, try the following:<br/><br/>Select and copy the entire link.<br/>Open a browser window and paste the link in the address bar.<br/>Click <b>Go</b> or, on your keyboard, press <b>Enter</b> or <b>Return</b>.<br/><br/>Your access key for uploading packages is: {2}", registeredWebsite, context.Properties["ChallengeUrl"], userKey.AccessKey).Text;

                if (!String.IsNullOrWhiteSpace(contactEmail)) {
                    context.MailMessage.Body += T("<br/><br/>If you continue to have access problems or want to report other issues, please <a href=\"mailto:{0}\">Contact Us</a>.", contactEmail).Text;
                }

                FormatEmailBody(context);
                context.MessagePrepared = true;
            }

        }

        private static void FormatEmailBody(MessageContext context) {
            context.MailMessage.Body = "<p style=\"font-family:Arial, Helvetica; font-size:10pt;\">" + context.MailMessage.Body;
            context.MailMessage.Body += "</p>";
        }

        public void Sent(MessageContext context) {
        }
    }
}
