class WelcomeController < ApplicationController

  # GET /welcome
  def index
  	@storeys = Storey.all
  end

end
