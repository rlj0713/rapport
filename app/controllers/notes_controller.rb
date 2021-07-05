    
class NotesController < ApplicationController

    def show
        @target_user = User.find_by_id(params[:id])
    end

    def index
        @user = current_user
        @users = User.all
        if @user.coach
            @available_notes = Note.target(params[:user_id]).or(Note.all.where(target_id: @user.id)).order(id: :desc)
        else
            @available_notes = Note.target(session[:user_id]).or(Note.all.where(target_id: @user.id)).order(id: :desc)
        end
    end

    def new
        @note = Note.new
        @user = current_user
        session[:target_id] = params[:user_id].to_i
    end

    def create
        @note = Note.new(note_params)
        @levels = Level.all
        @note.creator_id = current_user.id
        @note.target_id = session[:target_id]
        if @note.valid?
            @note.save
            redirect_to user_notes_path(@note.target_id)
        else
            render :new
        end
    end

    def edit
        @note = Note.find_by_id(params[:id])
        session[:target_id] = @note.target_id
    end
    
    def update
        @note = Note.find_by_id(params[:id])
        @note.update(note_params)
        if current_user.coach
            redirect_to user_notes_path(@note.target_id)
        else
            redirect_to user_notes_path(current_user)
        end
    end

    def destroy
        @note = Note.find_by_id(params[:id])
        @note.destroy
        redirect_to user_notes_path(session[:target_id])
    end

    private

    def note_params
        params.require(:note).permit(:creator_id, :target_id, :content, :level_id, :category_id)
    end

end