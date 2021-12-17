# frozen_string_literal: true

class IdiomsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def show
    @idiom = Idiom.find(params[:id])
  end

def index
  @index_idioms = Idiom.where(validated: true)
  if params[:user_id].nil?
    @idioms_ = @index_idioms.search_by(params[:search])
  else
    @user = User.find(params[:user_id])
    @idioms_ = @index_idioms.where(user: @user)
  end
  @pagy, @idioms = pagy(@idioms_.order(created_at: :desc))
end

  def new
  end

  def create
    @idiom = Idiom.create(
      title_en: params[:idioms][:title_en],
      title_fr: params[:idioms][:title_fr],
      grammatical_type: params[:idioms][:grammatical_type],
      body: params[:idioms][:body],
      example_fr: params[:idioms][:example_fr],
      example_en: params[:idioms][:example_en],
      user: current_user
    )

    if @idiom.save
      flash[:success] = 'Ton expression est désormais en cours de validation !'
      redirect_to idiom_path(@idiom.id)
    else
      flash.now[:error] = @idiom.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
    if current_user.admin == true || current_user == @idiom.user
      @idiom = Idiom.find(params[:id])
    else
      redirect_to idiom_path
    end
  end

  def update
    @idiom = Idiom.find(params[:id])
    if @idiom.update(
      title_en: params[:idiom][:title_en],
      title_fr: params[:idiom][:title_fr],
      grammatical_type: params[:idiom][:grammatical_type],
      body: params[:idiom][:body],
      example_fr: params[:idiom][:example_fr],
      example_en: params[:idiom][:example_en],
      user: current_user
    )
      flash[:notice] = 'Édition réussie !'
      redirect_to idiom_path(@idiom.id)
    else
      flash.now[:error] = @idiom.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    @idiom = Idiom.find(params[:id])
    @idiom.destroy
    redirect_back(fallback_location: idioms_path)
  end

end
