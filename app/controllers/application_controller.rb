class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        #devise_parameter_sanitizer.permit(:sign_up) do |user_params|
            #user_params.permit(:employee_name, :employee_name_kana)
        #end
        devise_parameter_sanitizer.permit(:sign_up, keys: [:employee_name, :employee_name_kana])
    end 

    def after_sign_in_path_for(resource)
        shifts_path   
    end
end
