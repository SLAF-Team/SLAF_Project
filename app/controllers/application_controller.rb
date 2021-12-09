class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :error, :warning
  before_action :letter
  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pagy::Backend

  def letter
    @letters = *('A'..'Z')
  end

  private

  def already_liked?
    Like.where(user: current_user, idiom: @idiom).exists?
  end
  
  def already_unliked?
    Unlike.where(user: current_user, idiom: @idiom).exists?
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :alias])
  end
end
