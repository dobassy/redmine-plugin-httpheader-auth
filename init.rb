require 'redmine'
require_dependency 'redmine_plugin_httpheader_auth/hooks'
require_dependency 'redmine_plugin_httpheader_auth/account_controller_patch'


Redmine::Plugin.register :redmine_plugin_httpheader_auth do
  name 'Redmine Plugin Httpheader Authentication plugin'
  author 'Dobashi, Hiroki'
  description 'This is a plugin for Redmine'
  version '0.9.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  Rails.configuration.to_prepare do
    AccountController.send(:include, AccountControllerPatch)
  end
end
