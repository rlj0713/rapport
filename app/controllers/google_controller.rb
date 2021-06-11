class GoogleController < ApplicationController

    def create
        @user = User.find_or_create_by(username: auth['info']['name']) do |u|
            # u.username = auth['info']['name']
            u.name = auth['info']['name']
            u.password = auth['uid'][-5...-1]
            u.coach = false
            u.image = auth['info']['image']
        end
        
        session[:user_id] = @user.id
        @user.save
        redirect_to @user
    end
        
    private

    def auth
        request.env['omniauth.auth']
    end
end