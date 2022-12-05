class PagesController < ApplicationController
  def home
    @building_user = User.where(address: current_user.address)
  end
end
