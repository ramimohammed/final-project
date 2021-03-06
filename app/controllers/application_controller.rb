class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!, except: [:index]

  
  before_action :configure_permitted_parameters, if: :devise_controller?
protected
     def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation,:first_name, :last_name, :birthday, :phone_number ) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit({ roles: [] }, :email, :password,) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({ keys: [:username] }, :email, :password, :password_confirmation,:first_name, :last_name,:birthday, :phone_number ) }

 end
end


