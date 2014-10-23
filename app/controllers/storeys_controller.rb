class StoreysController < ApplicationController
  before_action :set_storey, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @storeys = Storey.all
    respond_with(@storeys)
  end

  def show
    respond_with(@storey)
  end

  def new
    @storey = Storey.new
    respond_with(@storey)
  end

  def edit
  end

  def create
    @storey = Storey.new(storey_params)
    @storey.save
    respond_with(@storey)
  end

  def update
    @storey.update(storey_params)
    respond_with(@storey)
  end

  def destroy
    @storey.destroy
    respond_with(@storey)
  end

  private
    def set_storey
      @storey = Storey.find(params[:id])
    end

    def storey_params
      params.require(:storey).permit(:name)
    end
end
