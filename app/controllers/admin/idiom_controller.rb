module Admin
  class IdiomController < ApplicationController
    def show
      @idiom = Idiom.find(params[:id])
    end

    def index
      @idioms = Idiom.all
    end

    def edit
      @idiom = Idiom.find(params[:id])
    end

    def update
      @idiom = Idiom.find(params[:id])
      @idiom.update(validated: params[:submit])
      redirect_to admin_idiom_index_path, success: 'Édition validé !'
    end

    def destroy
      Idiom.find(params[:id]).destroy
      redirect_to admin_idiom_index_path, success: 'Expression supprimée avec succès !'
    end
  end
end
