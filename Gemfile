source 'https://rubygems.org'
git_source(:github) { |repo| "git@github.com:#{repo}.git" }

# Declare your gem's dependencies in gdpr.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]

gem 'rubocop', '0.52.1', require: false

gem 'workarea', '>= 3.2.0'
group :test do
  gem 'workarea-testing', '>= 3.2.0'
end