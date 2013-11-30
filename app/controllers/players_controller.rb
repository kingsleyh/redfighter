class PlayersController < ApplicationController

  before_filter :authenticate_user!

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params.merge(:health => 100, :level => 1, :room_id => 1, :user_id => current_user.id))
    if @player.save
      redirect_to games_path
    else
      render new_player_path
    end
  end

  def change_room
    @player = Player.find(params[:id])
    previous = @player.room_id
    @player.room_id = params[:room_id]
    @player.previous_room_id = previous
    @player.save
    respond_to do |format|
      if @player.save
        format.js {}
      end
    end
  end

  def player_params
    params.require(:player).permit(:name)
  end

end
