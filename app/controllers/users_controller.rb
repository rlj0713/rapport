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
        @coach_quote_list = ["A coach is someone who can give correction without causing resentment.", "Coaches have to watch for what they don’t want to see and listen to what they don’t want to hear.", "The interesting thing about coaching is that you have to trouble the comfortable, and comfort the troubled."]
        @teacher_quote_list = ["Feedback is the breakfast of champions.", "Strive for continuous improvement, instead of perfection.", "Mistakes should be examined, learned from, and discarded; not dwelled upon and stored."]
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
