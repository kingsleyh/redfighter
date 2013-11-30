class StrategiesController < ApplicationController

  before_filter :authenticate_user!

  def new
    @strategy = Strategy.new
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
        @strategy = Strategy.new(strategy_params)
        @strategy.save
        @player.strategies << @strategy
        @player.save
          #format.js {}
          #render :text => 'ok'
      end

    #end
  end

  def strategy_params
    params.require(:strategy).permit(:name, :slot_1, :slot_2, :slot_3, :slot_4, :slot_5, :slot_6, :slot_7, :slot_8, :slot_9, :slot_10)
  end


end
