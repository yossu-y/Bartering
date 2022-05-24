class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top, :about]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  private
  
  def after_sign_in_path_for(resource)
    about_path
  end
  
  def after_sign_out_path_for(resource)
    new_user_session_path
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
    keys: [
    :last_name,
    :first_name,
    :first_name_kana,
    :last_name_kana,
    :post_code,
    :address,
    :phone_number
    ])
  end
  
end
