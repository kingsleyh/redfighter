class CreateShieldsPlayers < ActiveRecord::Migration
  def change
    create_table :players_shields do |t|
      t.integer :player_id
           t.integer :shield_id
    end
  end
end
