class Admin::CommentController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end

  def index
    @comments = Comment.all
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update('body' => params[:comment][:body])
      redirect_to admin_comment_index_path, success: 'Commentaire modifié.'
    else
      flash.now[:error] = 'Pas toi...!'
      render :edit
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to admin_comment_index_path, success: 'Commentaire supprimée avec succès !'
  end

end

