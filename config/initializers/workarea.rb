Workarea.configure do |config|
  field = config.admin_definition.fields.detect { |f| f.id == :inquiry_subjects }
  field.options[:default].merge!('gdpr' => 'GDPR Request')
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
