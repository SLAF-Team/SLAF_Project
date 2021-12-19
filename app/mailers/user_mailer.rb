class UserMailer < ApplicationMailer
  default from: 'contact@syndicatdelutteantifranglais.club'

  def welcome_email(user)
    @user = user

    @url  = 'https://syndicatdelutteantifranglais.club/'

    mail(to: @user.email, subject: "L'équipe du SLAF! te souhaite la bienvenue")
  end
end
