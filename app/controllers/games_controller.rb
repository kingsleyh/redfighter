class GamesController < ApplicationController

  def index
    @players = Player.all
  end

  def play
    @player = Player.first
    @areas = Area.all

  end

end
