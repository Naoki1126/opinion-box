class ApplicationController < ActionController::Base
    before_action :set_current_user
    before_action :newtag

    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def newtag
        @tagnew = Tag.new
    end
end
