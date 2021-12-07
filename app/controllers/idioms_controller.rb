class IdiomsController < ApplicationController

  def new
    @idiom = Idiom.new()
  end

  def create

    @idiom = Idiom.create(title_en: params[:idioms][:title_en], title_fr: params[:idioms][:title_fr],
      grammatical_type: params[:idioms][:grammatical_type], body: params[:idioms][:body], example: params[:idioms][:example], user: current_user)

      puts @idiom.errors.messages

    # if @idiom.save
    # redirect_to idiom_path(@idiom.id), success: 'Ton expression est désormais en cours de validation !'

    # else
    # flash.now[:danger] = 'Aïe, Richelieu serait triste, retente ta chance !'
    # render :new
    # end

  end

    def index
        @idioms = Idiom.all
    end

  end
