class AvatarsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.avatar.attach(params[:avatar])
    rescue ActiveRecord::RecordNotSaved
    flash[:notice] = "Sélectionne une nouvelle image avant de confirmer."
    redirect_to(user_path(@user))
  end

end
