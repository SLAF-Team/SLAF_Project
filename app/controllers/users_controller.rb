class UsersController < ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]

    def show
        @likes = Like.where(user: @user)
        @idioms = Idiom.where(user: @user)
    end
end

private

    def set_user
        @user = User.find(params[:id])
    end
