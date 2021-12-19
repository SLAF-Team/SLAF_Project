class UnlikesController < ApplicationController
  before_action :find_idiom
  before_action :find_unlike, only: [:destroy]

  def create
    if already_liked?
      flash[:notice] = 'Une intéressante contradiction !'
    else
      @idiom.unlikes.create(user: current_user)
    end
    redirect_back(fallback_location: idioms_path)
  end

  def destroy
    @unlike.destroy
    redirect_back(fallback_location: idioms_path)
  end

  private

  def find_idiom
    @idiom = Idiom.find(params[:idiom_id])
  end

  def find_unlike
    @unlike = @idiom.unlikes.find(params[:id])
  end
end
