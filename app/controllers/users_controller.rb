class UsersController < ApplicationController

    def create
        @user = User.new do |u|
            u.username = params[:user][:username]
            u.password = params[:user][:password]
        end
        @user.save

        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def new
        @user = User.new
    end

    def show
        if session[:user_id]
            @user = current_user
        end

    end
end
