class CommentsController < ApplicationController
    before_action :find_idiom

    def new
        @comment = Comment.new()
    end

    def create
        @comment = @idiom.comments.create(body: params[:comments][:body], user: current_user,idiom: params[@idiom])
        respond_to do |format|
            format.html { redirect_to idiom_path(@idiom.id) }
            format.js { }
        end
    end

    def destroy
        @idiom.comments.find(params[:id]).destroy
        redirect_to idiom_path(@idiom.id)
    end

    def edit
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])

        if @comment.update(body: params[:comment][:body])
        flash[:notice] = 'Edition réussie !'
        redirect_to idiom_path(@idiom.id)
        else
        flash[:error] = 'Commentaire trop petit ou trop grand !'
        render :edit
        end
    end

    private

    def find_idiom
        @idiom = Idiom.find(params[:idiom_id])
    end


end


