class RoomsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
     redirect_to rooms_path
    else
      render new_room_path
    end
  end

  def room_params
    params.require(:room).permit(:name, :level, :description, :area_id)
  end


end
