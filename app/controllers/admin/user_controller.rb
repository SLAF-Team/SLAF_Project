# frozen_string_literal: true

module Admin
  class UserController < ApplicationController
    def index
      @user = User.all
    end

    def show
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])

      if @user.update('admin' => true, 'admin' => false)
        redirect_to admin_user_path(@user.id)
      else
        render :edit
      end
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
