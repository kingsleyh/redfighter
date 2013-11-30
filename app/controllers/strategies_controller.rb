class StrategiesController < ApplicationController

  before_filter :authenticate_user!

  def new
    @strategy = Strategy.new
  end

  def create
    @player = Player.first
    @strategy = Strategy.new(strategy_params)
    respond_to do |format|
      if @strategy.save
        format.js {}
      end
    end
  end

  def strategy_params
    params.require(:strategy).permit(:name, :player_id, :slot_1,:slot_2,:slot_3,:slot_4,:slot_5,:slot_6,:slot_7,:slot_8,:slot_9,:slot_10)
  end


end
