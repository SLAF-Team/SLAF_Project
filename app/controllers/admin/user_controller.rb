module Admin
  class UserController < ApplicationController
    def index
      @user = User.all.sort_by(&:created_at).reverse
    end

    def show
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      @user.update(admin: params[:submit])
      redirect_to admin_user_path(@user.id), success: 'Édition validée !'
    end

    def destroy
      User.find(params[:id]).destroy
      redirect_to admin_user_index_path
    end

    def edit
      @user = User.find(params[:id])
    end
  end
end
