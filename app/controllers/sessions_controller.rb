class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to @user
        else
            render :new
        end
    end

    def new
    end

    def destroy
        session.delete('user_id')
        redirect_to root_path
    end

end