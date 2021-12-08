class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :error, :warning
  include Pagy::Backend
end
