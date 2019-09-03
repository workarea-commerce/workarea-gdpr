/**
 * @namespace WORKAREA.gdprPopup
 */
WORKAREA.registerModule('gdprPopup', (function () {
    'use strict';

    var markUserHasSeenPopup = function () {
            WORKAREA.cookie.create('gdpr_popup', 'true', 999);
        },

        userHasSeenPopup = function () {
            return Boolean(WORKAREA.cookie.read('gdpr_popup'));
        },

        showPopup = function () {
            WORKAREA.dialog.createFromTemplate(
                { path: 'workarea/storefront/gdpr/templates/popup' },
                {
                    uiDialogOptions: {
                        modal: true,
                        closeOnEscape: false,
                        classes: {
                            'ui-dialog': 'gdpr-popup'
                        },
                        open: function(event, ui) {
                            $('.ui-dialog-titlebar-close', ui.dialog | ui).hide();
                        },
                        buttons: [{
                            text: I18n.t('workarea.storefront.gdpr.agree'),
                            click: function() {
                                $(this).dialog('close');
                                markUserHasSeenPopup();
                            }
                        }]
                    }
                }
            );
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.gdprPopup
         */
        init = _.once(function () {
            if (!userHasSeenPopup()) { showPopup(); }
        });

    return {
        init: init
    };
}()));
