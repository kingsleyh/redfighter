class GamesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @players = current_user.players.all
  end

  def play
    @player = Player.where(:id => params[:id]).first
    redirect_to games_path if @player.nil? or @player.user != current_user
    @areas = Area.all
  end

end
