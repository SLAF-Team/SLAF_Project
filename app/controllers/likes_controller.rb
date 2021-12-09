class LikesController < ApplicationController
before_action :find_idiom
before_action :find_like, only: [:destroy]


  def create
    if already_liked?
      flash[:notice] = "Nos expressions ne sont pas polyamoureuses"
    else
      @idiom.likes.create(user: current_user)
    end
    redirect_to idiom_path(@idiom)
  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Tu ne peux détester ce que tu n'aimes pas"
    else
      @like.destroy
    end
    redirect_to idiom_path(@idiom)
  end

  private
  def find_idiom
    @idiom = Idiom.find(params[:idiom_id])
  end

  def already_liked?
    Like.where(user: current_user, idiom: @idiom).exists?
  end

  def find_like
    @like = @idiom.likes.find(params[:id])
  end

end
