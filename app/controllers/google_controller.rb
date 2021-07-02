class GoogleController < ApplicationController

    def create
        @user = User.find_or_create_by(username: auth['info']['email']) do |u|
            # u.username = auth['info']['name']
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.password = auth['uid'][-5...-1]
            u.coach = false
            u.image = auth['info']['image']
            u.school_id = 1
        end

        @user.save
        session[:user_id] = @user.id
        session[:school_id] = @user.school_id
        redirect_to user_path(@user)
    end

    def new
        render :new
    end
        
    private

    def auth
        request.env['omniauth.auth']
    end
end