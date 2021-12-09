class CommentsController < ApplicationController
    before_action :find_idiom

    def new
        @comment = Comment.new()
    end

    def create
        @comment = @idiom.comments.create(body: params[:comments][:body], user: current_user,idiom: params[@idiom])
        redirect_to idiom_path(@idiom)
    end

    def destroy
        @idiom.comments.find(params[:id]).destroy
        redirect_to root_path
    end

    def edit
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
     
        if @comment.update('body' => params[:comment][:body])
          redirect_to idiom_path(@idiom)
        else
          render :edit
        end
    end

    private

    def find_idiom
        @idiom = Idiom.find(params[:idiom_id])
    end


end


