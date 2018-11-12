module AccountControllerPatch
  def self.included(base)
    base.send(:include, InstanceMethods)
    base.class_eval do
      unloadable
      alias_method_chain :login, :headeruid
    end
  end

  module InstanceMethods
    def login_with_headeruid
      logger.info("I'm in login_with_headeruid")
      x_uid = request.env['HTTP_X_UID']

      if x_uid
        header_authentication
      else
        login_without_headeruid
      end
    end
  end

  private

  def header_authentication
    x_uid = request.env["HTTP_X_UID"]
    user = User.find_by_login(x_uid)
    user.update_column(:last_login_on, Time.now) if user && !user.new_record? && user.active?

    if user.active?
      successful_authentication(user)
    else
      handle_inactive_user(user)
    end
  end
end
