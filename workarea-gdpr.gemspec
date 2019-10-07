$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'workarea/gdpr/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'workarea-gdpr'
  s.version     = Workarea::Gdpr::VERSION
  s.authors     = ['Ben Crouse']
  s.email       = ['bcrouse@weblinc.com']
  s.homepage    = 'https://github.com/workarea-commerce/workarea-gdpr'
  s.summary     = 'GDPR support for the Workarea Commerce Platform'
  s.description = 'This adds minimal required functionality for GDPR compliance to the Workarea Commerce Platform.'
  s.license = 'Business Software License'
  s.files = `git ls-files`.split("\n")
  s.add_dependency 'workarea', '~> 3.x', '>= 3.5.x'
end
