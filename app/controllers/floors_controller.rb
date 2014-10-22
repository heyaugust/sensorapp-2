class FloorsController < ApplicationController
  before_action :set_floor, only: [:show, :edit, :update, :destroy]

  def index
    @floors = Floor.all
    respond_with(@floors)
  end

  def show
    respond_with(@floor)
  end

  def new
    @floor = Floor.new
    respond_with(@floor)
  end

  def edit
  end

  def create
    @floor = Floor.new(floor_params)
    @floor.save
    respond_with(@floor)
  end

  def update
    @floor.update(floor_params)
    respond_with(@floor)
  end

  def destroy
    @floor.destroy
    respond_with(@floor)
  end

  private
    def set_floor
      @floor = Floor.find(params[:id])
    end

    def floor_params
      params.require(:floor).permit(:name)
    end
end
