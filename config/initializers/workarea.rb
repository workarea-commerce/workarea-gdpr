Workarea.configure do |config|
  config.inquiry_subjects['gdpr'] = 'GDPR Request'
end

unless Rails.env.test?
  Workarea::Plugin.append_javascripts(
    'storefront.modules',
    'workarea/storefront/gdpr/modules/gdpr_popup'
  )

  Workarea::Plugin.append_javascripts(
    'storefront.templates',
    'workarea/storefront/gdpr/templates/popup'
  )
end
