class LikesController < ApplicationController
before_action :find_idiom

  def create
    @idiom.likes.create(user: current_user)
    redirect_to post_path(@post)
  end

  private
  def find_idiom
    @idiom = Idiom.find(params[:idiom_id])
  end

end
