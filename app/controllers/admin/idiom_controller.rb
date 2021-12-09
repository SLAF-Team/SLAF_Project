class Admin::IdiomController < ApplicationController
    def index
        @idiom = Idiom.all
        @user = User.all
    end

    def show
        @idiom = Idiom.find(params[:id])
    end

    def update
    @idiom = Idiom.find(params[:id])
    @idiom.update(validated: params[:submit])
    redirect_to admin_idiom_index_path, success: 'Expression validée, cheffe !'
    end

    def destroy
        Idiom.find(params[:id]).destroy
        redirect_to admin_idiom_index_path
    end

    def edit
        @idiom = Idiom.find(params[:id])
    end

end