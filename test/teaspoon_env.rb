require 'workarea/testing/teaspoon'

Teaspoon.configure do |config|
  config.root = Workarea::Gdpr::Engine.root
  Workarea::Teaspoon.apply(config)
end
