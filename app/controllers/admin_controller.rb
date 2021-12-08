class AdminController < ApplicationController

  def index
    @user = User.all
    @idiom = Idiom.all
  end

end
