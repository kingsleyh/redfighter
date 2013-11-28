class GamesController < ApplicationController

  def index
    @players = Player.all
  end

  def play
    @player = Player.find(params[:id])
    @areas = Area.all
    @strategy = Strategy.new
  end

end
