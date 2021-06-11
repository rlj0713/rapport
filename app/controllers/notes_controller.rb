    
class NotesController < ApplicationController

    def show
        @target_user = User.find_by_id(params[:id])
    end

    def index
        @user = current_user
        @available_notes = Note.all.where(target_id: params[:user_id]).or(Note.all.where(target_id: @user.id))
        @users = User.all
    end

    def new
        @note = Note.new
        @user = current_user
        @@target_user = params[:user_id].to_i
    end

    def create
        @note = Note.new(note_params)
        @note.creator_id = current_user.id
        @note.target_id = @@target_user
        if @note.save
            redirect_to user_notes_path
        else
            render :new
        end
    end

    private

    def note_params
        params.require(:note).permit(:creator_id, :target_id, :content, :level_id)
    end

end