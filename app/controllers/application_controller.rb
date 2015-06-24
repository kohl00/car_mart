class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :permission_denied


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit({ roles: []}, :name, :email, :password, :password_confirmation, :provider, :uid, :publishable_key, :access_code, :stripe_user_id)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit({ roles: []}, :name, :email, :current_password, :password, :password_confirmation, :provider, :uid, :publishable_key, :access_code, :stripe_user_id, :description)} 
  end

   private

  def permission_denied
    flash[:danger] = "You don't have the proper permissions to view this page."
    self.response_body = nil 
    redirect_to(request.referrer || root_path)
  end
end
