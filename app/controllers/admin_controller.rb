class AdminController < ApplicationController
   before_action :authenticate_user!, only: [:index]
   before_action :check_if_admin

  def index
    @user = User.all
    @idiom = Idiom.all
    @admin = current_user.admin
  end

  def update
    @idiom = Idiom.find(params[:id])
    if @idiom.update('validated' => true)
      redirect_to root_path
    end

  end

  private

  def check_if_admin
    if current_user.admin == false
      redirect_to root_path
    end
  end

end
