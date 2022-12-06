# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

require 'open_project/slack/version'
# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ticketing"
  s.version     = "0.2"#OpenProject::Slack::VERSION
  s.authors     = "ramesh"#"OpenProject GmbH"
  s.email       = "guru9763@gmail.com"#"info@openproject.org"
  s.summary     = 'OpenProject Slack'
  s.description = "Slack integration"
  s.license     = "GPLv3" # e.g. "MIT" or "GPLv3"

  s.files = Dir["{app,config,db,lib}/**/*"] + %w(CHANGELOG.md README.md)

  s.add_dependency "rails"
  s.add_dependency "slack-notifier", "~> 2.3", ">= 2.3.2"
end
