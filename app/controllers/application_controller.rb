class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Before action for adding custom field to formulars
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!


  protected
  def configure_permitted_parameters
    # Adding sanitizer for the input username to the sign up form
    devise_parameter_sanitizer.for(:sign_up) << :username
    # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email) }
  end
end