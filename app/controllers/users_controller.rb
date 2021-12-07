class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        @likes = Like.where(user: @user)
    end
    
end
