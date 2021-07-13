class UsersController < ApplicationController

    def create
        @user = User.new do |u|
            u.username = params[:user][:username]
            u.name = params[:user][:name]
            u.email = params[:user][:email]
            u.password = params[:user][:password]
            u.coach = false
            u.school_id = params[:user][:school_id]
            u.image = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlTb6qZreuzn7kXfZd-xZsRk2WvgU4bD0ttg&usqp=CAU"
        end
        
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            session[:school_id] = @user.school_id
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
            @users_at_permission_level = User.all.where(coach: false, school_id: @user.school_id).sort_by_name
        else
            @users_at_permission_level = @user
        end
    end

    def edit
        @user = User.find_by_id(params[:id])
    end

    def update
        @user = User.find_by_id(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user = User.find_by_id(params[:id])
        @notes = Note.where(target_id: @user.id)
        @notes.each do |n|
            n.destroy
        end
        @user.destroy
        redirect_to users_path(@user)
    end


    private

    def user_params
        params.require(:user).permit(:username, :name, :email, :uid, :password_digest, :password, :coach, :school_id, :image)
    end

end
