class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        shifts_path
    end
end
