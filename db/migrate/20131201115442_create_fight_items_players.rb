class CreateFightItemsPlayers < ActiveRecord::Migration
  def change
    create_table :fight_items_players do |t|
      t.integer :fight_item_id
      t.integer :player_id
    end
  end
end
