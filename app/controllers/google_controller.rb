class GoogleController < ApplicationController
    # def self.from_omniauth(auth)
    #     where(email: auth.info.email).first_or_initialize do |user|
    #         user.image = auth.info.image
    #         user.first_name = auth.info.first_name
    #         user.last_name = auth.info.last_name
    #         user.email = auth.info.email
    #     end
    # end

    def create
        @user = User.find_or_create_by(username: auth['info']['name']) do |u|
            # u.username = auth['info']['name']
            u.name = auth['info']['name']
            u.password = auth['uid'][-5...-1]
            u.coach = false
            # u.image = auth['info']['image']
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