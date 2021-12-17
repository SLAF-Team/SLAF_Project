class LikesController < ApplicationController
  before_action :find_idiom
  before_action :find_like, only: [:destroy]

  def create
    if already_unliked?
      flash[:notice] = 'Une intéressante contradiction !'
    else
      @idiom.likes.create(user: current_user)
    end
    redirect_back(fallback_location: idioms_path)
  end

  def destroy
    @like.destroy
    redirect_back(fallback_location: idioms_path)
  end

  private

  def find_idiom
    @idiom = Idiom.find(params[:idiom_id])
  end

  def find_like
    @like = @idiom.likes.find(params[:id])
  end
  
end
