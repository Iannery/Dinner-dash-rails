class ApplicationController < ActionController::Base

    def is_admin?
        if current_user.admin
            true
        else
            flash[:alert] = "Vocẽ não tem permissão para realizar essa ação"
            return redirect_to categories_path
            
        end
        
    end
helper_method :is_admin?
end
