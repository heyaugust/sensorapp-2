class WelcomeController < ApplicationController

  # GET /welcome
  def index
  	@storeys = Storey.all
  	@rooms = Room.all
  end

end
