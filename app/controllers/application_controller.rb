class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :error, :warning
  before_action :letter
  include Pagy::Backend

  def letter
    @letters = *('A'..'Z')
  end
  
end
