class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  layout :layout_by_resource

  rescue_from CanCan::AccessDenied do | exception | 
      flash[:error]= exception.message 
      redirect_to root_url
  end 

  protected
  def layout_by_resource
    if devise_controller?
      "application"
    else
      "devise"
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :last_name1, :last_name2, :approved,:email, :password, :password_confirmation, :role_ids) }
  end
  
end
