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
        puts '$'*80
        puts params
        puts '$'*80
     
        if @comment.update('body' => params[:comment][:body])
          redirect_to root_path
        else
          puts 'nop'
        end
    end

    private

    def find_idiom
        @idiom = Idiom.find(params[:idiom_id])
    end


end


