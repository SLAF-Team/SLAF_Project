# frozen_string_literal: true

class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :error, :warning
  before_action :letter
  before_action :configure_permitted_parameters, if: :devise_controller?

  include Pagy::Backend

  private

  def letter
    @letters = *('A'..'Z')
  end

  def already_liked?
    Like.where(user: current_user, idiom: @idiom).exists?
  end

  def already_unliked?
    Unlike.where(user: current_user, idiom: @idiom).exists?
  end

  def default_url_options
    { host: ENV['DOMAIN'] || 'localhost:3000' }
  end

  def after_sign_in_path_for(resource)
    idioms_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name alias])
  end

end
