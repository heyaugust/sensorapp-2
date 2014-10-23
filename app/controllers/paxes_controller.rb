class PaxesController < ApplicationController
  before_action :set_pax, only: [:show, :edit, :update, :destroy]

  def index
    @paxes = Pax.all
    respond_with(@paxes)
  end

  def show
    respond_with(@pax)
  end

  def new
    @pax = Pax.new
    respond_with(@pax)
  end

  def edit
  end

  def create
    @pax = Pax.new(pax_params)
    @pax.save
    respond_with(@pax)
  end

  def update
    @pax.update(pax_params)
    respond_with(@pax)
  end

  def destroy
    @pax.destroy
    respond_with(@pax)
  end

  private
    def set_pax
      @pax = Pax.find(params[:id])
    end

    def pax_params
      params.require(:pax).permit(:name, :room_id)
    end
end
