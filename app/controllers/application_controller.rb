class ApplicationController < ActionController::Base

  before_action :authenticate_student!
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_sign_in_params, only: [:create]


  protected
  #  def after_sign_in_path_for(resource)
  #   dashboard_path    
  #  end

   def after_sign_out_path_for(resource)
    student_session_path
   end

  
   def configure_sign_up_params
    p 'in application controller...........'
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

   def configure_sign_in_params
     devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
   end
end
