class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  prepend_view_path Rails.root.join("frontend")

  def after_sign_out_path_for(admin)
    new_admin_session_path
  end
end
