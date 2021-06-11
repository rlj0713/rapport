class UsersController < ApplicationController

    def create
        @user = User.new do |u|
            u.username = params[:user][:username]
            u.name = params[:user][:name]
            u.password = params[:user][:password]
            u.coach = params[:user][:coach]
            u.image = "https://ih1.redbubble.net/image.371090777.1645/flat,128x128,075,t.u2.jpg"
        end
        
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def new
        @user = User.new
    end

    def show
        if session[:user_id]
            @user = current_user
            @notes = Note.all
        end
    end

    def index
        @user = current_user
        if @user.coach
            @users_at_permission_level = User.all.where(coach: false)
        else
            @users_at_permission_level = @user
        end
    end
end
