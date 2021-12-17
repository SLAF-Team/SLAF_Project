# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'contact@syndicatdelutteantifranglais.club'

  def welcome_email(user)
    @user = user

    @url  = 'http://syndicatdelutteantifranglais.club'

    mail(to: @user.email, subject: "L'équipe S.L.A.F te souhaite la bienvenue !")
  end
end
