# frozen_string_literal: true

class AvatarsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @user.avatar.attach(params[:avatar])
    rescue ActiveRecord::RecordNotSaved
    flash[:notice] = "Impossible d'enregister un nouvel avatar. Sélecionne une nouvelle image ou ressaie plus tard."
    redirect_to(user_path(@user))
  end
end
