class CreateAttacksPlayers < ActiveRecord::Migration
  def change
    create_table :attacks_players do |t|
      t.integer :player_id
      t.integer :attack_id
    end
  end
end
