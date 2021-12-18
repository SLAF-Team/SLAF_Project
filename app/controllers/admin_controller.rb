class AdminController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :check_if_admin

  def index
    @users = User.all
    @idioms = Idiom.all
    @comments = Comment.all
    @admin = current_user.admin
  end

  private

  def check_if_admin
    redirect_to idioms_path if current_user.admin == false
  end
  
end
