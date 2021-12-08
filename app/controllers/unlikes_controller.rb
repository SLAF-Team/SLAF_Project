class UnlikesController < ApplicationController
before_action :find_idiom
before_action :find_unlike, only: [:destroy]
    
  def create
    if already_unliked?
      flash[:notice] = "Impossible"
    else
      @idiom.unlikes.create(user: current_user)
    end
    redirect_to idiom_path(@idiom)
  end
    
  def destroy
    if !(already_unliked?)
      flash[:notice] = "Tu ne peux détester qu'une fois"
    else
      @unlike.destroy
    end
    redirect_to idiom_path(@idiom)
  end
  
private

  def find_idiom
    @idiom = Idiom.find(params[:idiom_id])
  end

  def already_unliked?
    Unlike.where(user: current_user, idiom: @idiom).exists?
  end

  def find_unlike
    @unlike = @idiom.unlikes.find(params[:id])
  end

end
