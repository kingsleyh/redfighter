class FightbarsController < ApplicationController

  before_filter :authenticate_user!

  def new
    @fightbar = FightBar.new
  end

  def create
    #@strategy = Strategy.new(strategy_params)
    #@player = Player.find(@strategy.player_id)
    #respond_to do |format|
    #  if @player.nil? or @player.user != current_user
    #    if @strategy.save
    #      format.js {}
    #    end
    #  end
    #end
    @player = Player.find(params[:id_player])
    #respond_to do |format|
    unless @player.nil? or @player.user != current_user
      p 1
      @fightbar = FightBar.new(fightbar_params)
      p 2
      @fightbar.save
      p 3
      @player.fight_bars << @fightbar
      p 4
      @player.save
      #format.js {}
      #render :text => 'ok'
    end

    #end
  end

  def fightbar_params
    params.require(:fightbar).permit(:name, :slot_1, :slot_2, :slot_3, :slot_4, :slot_5, :active)
  end

end
