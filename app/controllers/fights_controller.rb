class FightsController < ApplicationController


  def challenge
    p params
   # f1 = params[:challenge_f1]
   # f2 = params[:challenge_f2]
   # strategy = params[:challenge_strategy]
   #@fight = Fight.create(fighter_1_id: f1, fighter_2_id: f2, status:'active')
   #@fight.save
   #p1 = Player.find(f1)
   #p2 = Player.find(f2)
   #Fight.rumble(p1,p2, strategy)
   render :text => 'ok'
  end

end
