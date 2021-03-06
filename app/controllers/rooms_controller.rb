class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @rooms = Room.all
    respond_with(@rooms)
  end

  def show
    respond_with(@room)
  end

  def self.pax
  end
  
  def new
    @room = Room.new
    @storeys = Storey.all
    respond_with(@room)
  end

  def edit
    @room = Room.find(params[:id])
    @storeys = Storey.all
  end

  def create
    @room = Room.new(room_params)
    @room.save
    respond_with(@room)
  end

  def update
    @room.update(room_params)
    respond_with(@room)
  end

  def destroy
    @room.destroy
    respond_with(@room)
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:name, :pax, :storey_id)
    end
end
