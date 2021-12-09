class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :error, :warning
  before_action :letter
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
  
end
