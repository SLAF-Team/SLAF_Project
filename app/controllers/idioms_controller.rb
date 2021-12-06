class IdiomsController < ApplicationController

  def new
    @idiom = Idiom.new
  end

  def create
    print "$$$$$$$$$$$$$$$$$$$"
    print params[:title_en]
    print "$$$$$$$$$$$$$$$$$$$"
    print params[:title_fr]
    print "$$$$$$$$$$$$$$$$$$$"
    print params[:example]
    print "$$$$$$$$$$$$$$$$$$$"
    print params[:example]

    @idiom = Idiom.new(title_en: params[:title_en], title_fr: params[:title_fr],
      grammatical_type: params[:grammatical_type], body: params[:body], example: params[:example], user: current_user)

    if @idiom.save
    redirect_to idiom_path(@idiom.id), success: 'Ton expression est désormais en cours de validation !'

    else
    flash.now[:danger] = 'Aïe, Richelieu serait triste, retente ta chance !'
    render :new
    end
  end

end
