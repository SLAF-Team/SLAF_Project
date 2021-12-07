class IdiomsController < ApplicationController

  def new
    @idiom = Idiom.new()
  end

  def create
    @idiom = Idiom.create(title_en: params[:idioms][:title_en], title_fr: params[:idioms][:title_fr],
      grammatical_type: params[:idioms][:grammatical_type], body: params[:idioms][:body], example: params[:idioms][:example], user: current_user)
      
      # puts @idiom.errors.messages

    if @idiom.save
      flash[:success] = 'Ton expression est désormais en cours de validation !'
      redirect_to idiom_path(@idiom.id)
    else
    flash.now[:error] = @user.errors.full_messages.to_sentence
    render :new
    end
  end

    def index
        @idioms = Idiom.all
    end

  end
