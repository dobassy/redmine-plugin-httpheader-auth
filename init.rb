require 'redmine'
require_dependency 'redmine_plugin_httpheader_auth/hooks'

Redmine::Plugin.register :redmine_plugin_httpheader_auth do
  name 'Redmine Plugin Httpheader Authentication plugin'
  author 'Dobashi, Hiroki'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
