class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params.merge(:health => 100, :level => 1))
    if @player.save
      redirect_to games_path
    else
      render new_player_path
    end
  end

  def player_params
    params.require(:player).permit(:name)
  end

end