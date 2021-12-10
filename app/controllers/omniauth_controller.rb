class OmniauthController < ApplicationController

  def facebook
  @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user
    else
      flash[:error] = 'Connexion avec Facebook impossible. Veuillez créer un compte ou essayer plus tard.'
      redirect_to idioms_path
    end
  end

  def google_oauth2
  @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user
    else
      flash[:error] = 'Connexion avec Google impossible. Veuillez créer un compte ou réessayer plus tard.'
      redirect_to idioms_path
    end
    Rails.logger.info(@user.errors.inspect)
  end

  def failure
    flash[:error] = 'Connexion impossible. Veuillez créer un compte ou réessayer plus tard.'
    redirect_to new_user_registration_url
  end

end

