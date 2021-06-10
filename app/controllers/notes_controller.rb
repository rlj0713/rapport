    
class NotesController < ApplicationController

    def show
        @target_user = User.find_by_id(params[:id])
    end

    def index
        @user = current_user
        @available_notes = Note.all.where(creator_id: @user.id, target_id: params[:user_id]).or(Note.all.where(target_id: @user.id))
        @users = User.all
    end
end