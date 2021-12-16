# frozen_string_literal: true

module Admin
  class IdiomController < ApplicationController
    def show
      @idiom = Idiom.find(params[:id])
    end

    def index
      @idioms = Idiom.all
      @user = User.all
    end

    def edit; end

    def update
      @idiom = Idiom.find(params[:id])
      @idiom.update(validated: params[:submit])
      redirect_to admin_idiom_index_path, success: 'Edition validé !'
    end

    def destroy
      Idiom.find(params[:id]).destroy
      redirect_to admin_idiom_index_path, success: 'Expression supprimée avec succès !'
    end

    def edit
      @idiom = Idiom.find(params[:id])
    end
  end
end
