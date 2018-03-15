class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :date_of_birth])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :gender, :date_of_birth])
  end
  def after_sign_in_path_for(resource)
	  dashboard_index_path #your path
	end
end
