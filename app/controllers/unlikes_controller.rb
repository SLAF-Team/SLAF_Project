# frozen_string_literal: true

class UnlikesController < ApplicationController
  before_action :find_idiom
  before_action :find_unlike, only: [:destroy]

  def create
    if already_liked?
      flash[:notice] = 'Quelle intéressante contradiction !'
    else
      @idiom.unlikes.create(user: current_user)
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    if !already_unliked?
      flash[:notice] = "Tu ne peux détester qu'une fois"
    else
      @unlike.destroy
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def find_idiom
    @idiom = Idiom.find(params[:idiom_id])
  end

  def find_unlike
    @unlike = @idiom.unlikes.find(params[:id])
  end
end
