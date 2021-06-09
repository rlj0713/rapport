class UsersController < ApplicationController

    def create
        @user = User.new do |u|
            u.email = params[:user][:email]
            u.password = params[:user][:password]
            u.name = params[:user][:name]
        end
        @user.save

        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def new
        @user = User.new
    end

    def show
        @user = current_user
    end

end
