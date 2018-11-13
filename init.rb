require 'redmine'
require_dependency 'redmine_httpheader_auth/account_controller_patch'


Redmine::Plugin.register :redmine_httpheader_auth do
  name 'Redmine HTTP Header Authentication Plugin'
  author 'Dobashi, Hiroki'
  description 'The plugin for automatic login with user name set in the HTTP header.'
  version '0.9.1'
  url 'https://github.com/dobassy/redmine-plugin-httpheader-auth'
  author_url 'https://github.com/dobassy'

  Rails.configuration.to_prepare do
    AccountController.send(:include, AccountControllerPatch)
  end
end
