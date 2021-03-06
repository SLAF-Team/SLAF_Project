class OmniauthController < ApplicationController
  def facebook
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user
    else
      flash[:error] = 'Connexion via Facebook impossible. Crée un compte ou réessaie plus tard.'
      redirect_to new_user_registration_url
    end
  end

  def google_oauth2
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user
    else
      flash[:error] = 'Connexion via Google impossible. Crée un compte ou réessaie plus tard.'
      redirect_to new_user_registration_url
    end
    Rails.logger.info(@user.errors.inspect)
  end

  def failure
    flash[:error] = 'Connexion impossible. Crée un compte ou réessaie plus tard.'
    redirect_to new_user_registration_url
  end
end
