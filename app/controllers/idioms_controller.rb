class IdiomsController < ApplicationController
  before_action :authenticate_user!, only: [ :new]

  def show
    @idiom = Idiom.find(params[:id])
  end

  def index
      @index_idioms = Idiom.where(validated: true)
      @idioms_ = @index_idioms.search_by(params[:search])
      @pagy, @idioms = pagy(@idioms_.order(created_at: :desc))
    end

  def new
  end

  def create
    @idiom = Idiom.create(title_en: params[:idioms][:title_en], title_fr: params[:idioms][:title_fr],
      grammatical_type: params[:idioms][:grammatical_type], body: params[:idioms][:body], example: params[:idioms][:example], user: current_user)

    if @idiom.save
      flash[:success] = 'Ton expression est désormais en cours de validation !'
      redirect_to idiom_path(@idiom.id)
    else
    flash.now[:error] = @idiom.errors.full_messages.to_sentence
    render :new
    end
  end

  def edit
    @idiom = Idiom.find(params[:id])
  end

  def update
    @idiom = Idiom.find(params[:id])
      if @idiom.update(title_en: params[:idiom][:title_en], title_fr: params[:idiom][:title_fr],
        grammatical_type: params[:idiom][:grammatical_type], body: params[:idiom][:body], example: params[:idiom][:example], user: current_user)
      flash[:notice] = 'Edition réussie !'
      redirect_to idiom_path(@idiom.id)
      else
      flash.now[:error] = @idiom.errors.full_messages.to_sentence
      redirect_to edit_idiom_path(@idiom.id)
      end
    end

  def destroy
    @idiom = Idiom.find(params[:id])
    @idiom.destroy
    redirect_back(fallback_location: root_path)
  end

private

end