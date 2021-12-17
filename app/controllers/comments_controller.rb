class CommentsController < ApplicationController
  before_action :find_idiom

  def new
    @comment = Comment.new
  end

  def create
    @comment = @idiom.comments.create(
      body: params[:comments][:body], 
      user: current_user, 
      idiom: params[@idiom]
    )
    respond_to do |format|
      format.html { redirect_to idiom_path(@idiom.id) }
      format.js {}
    end
  end

  def edit
    if current_user.admin == true || current_user == @idiom.user
      @comment = Comment.find(params[:id])
    else
      redirect_to idiom_path
    end
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update('body' => params[:comment][:body])
      redirect_to idiom_path(@idiom.id), success: 'Commentaire modifié.'
    else
      flash.now[:error] = 'Commentaire trop petit ou trop grand !'
      render :edit
    end
  end

  def destroy
    @idiom.comments.find(params[:id]).destroy
    redirect_to idiom_path(@idiom.id)
  end

  private

  def find_idiom
    @idiom = Idiom.find(params[:idiom_id])
  end
  
end
