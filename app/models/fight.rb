class Fight < ActiveRecord::Base

  def self.rumble(player,npc, player_strategy)
    strategy = Strategy.find(player_strategy)
    npc.health -= Attack.find(strategy.slot_1).strength
  end



end
