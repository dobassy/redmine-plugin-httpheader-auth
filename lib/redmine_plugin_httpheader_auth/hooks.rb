module RedminePluginHttpheaderAuth
  class Hooks < Redmine::Hook::ViewListener
    def view_account_login_bottom(context = {})
      # html = ''
      # html << ''
      # html
      context[:controller].send(:render_to_string, {
        :partial => "hooks/redmine_plugin_httpheader_auth/view_account_login_bottom",
        :locals => context})
    end
  end
end
