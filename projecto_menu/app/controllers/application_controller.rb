class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  
  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
  
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:dni, :name, :last_name, :address, :phone, :telephone, :date_of_birth, :status, :profile_id, :email, :password) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:dni, :name, :last_name, :address, :phone, :telephone, :date_of_birth, :status, :profile_id, :email, :password, :current_password) }
        end
  
  
  
end



