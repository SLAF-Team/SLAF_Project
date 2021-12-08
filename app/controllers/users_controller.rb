class UsersController < ApplicationController
before_action :set_user, only: %i[ show edit update destroy ]

    def show
        @user = User.find(params[:id])
        @likes = Like.where(user: @user)
        @idioms = Idiom.where(user: @user)
    end

private
def set_user
    @user = User.find(params[:id])
end
    
end
