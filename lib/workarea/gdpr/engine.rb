module Workarea
  module Gdpr
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::Gdpr
    end
  end
end
