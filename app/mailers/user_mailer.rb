# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'oudartlucas51@gmail.com'

  def welcome_email(user)
    @user = user

    @url  = 'http://slaf.fr/login'

    mail(to: @user.email, subject: "L'équipe S.L.A.F te souhaite la bienvenue !")
  end
end
