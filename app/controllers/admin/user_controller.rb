class Admin::UserController < ApplicationController

    def index
        @user = User.all
    end 
end
