class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authenticate_user!, :same_user?

  def show
    @likes = Like.where(user: @user)
    @idioms = Idiom.where(user: @user)
    @comments = Comment.where(user: @user)
  end

  private
  
  def set_user
    @user = User.find(params[:id])
  end

  def same_user?
    @user = User.find(params[:id])
    current_user == @user ? nil : (redirect_to idioms_path)
  end

end
