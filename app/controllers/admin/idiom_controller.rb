class Admin::IdiomController < ApplicationController
    def index
        @idiom = Idiom.all
        @user = User.all
    end
end
