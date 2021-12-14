class Admin::IdiomController < ApplicationController

    def show
        @idiom = Idiom.find(params[:id])
    end

    def index
        @idioms = Idiom.all
        @user = User.all
    end

    def edit
    end

    def update
        puts "$"*50r
        puts params
        @idiom = Idiom.find(params[:id])
        @idiom.update(validated: params[:submit])
        redirect_to admin_idiom_index_path, success: 'Edition validé !'
    end

    def destroy
        Idiom.find(params[:id]).destroy
        redirect_to admin_idiom_index_path
    end

    def edit
        @idiom = Idiom.find(params[:id])
    end

end