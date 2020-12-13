class ApplicationController < ActionController::Base
    before_action :require_login

    def require_login
        unless @user = User.find_by_ssession_id(session[:session_id])
            puts "Пользователь не прошел аутентификацию"
            redirect_to "/login"
            return
        end
    end
end
