class CreateFightBars < ActiveRecord::Migration
  def change
    create_table :fight_bars do |t|
      t.string :name
      t.integer :player_id
      t.integer :slot_1
      t.integer :slot_2
      t.integer :slot_3
      t.integer :slot_4
      t.integer :slot_5
      t.boolean :active, :default => false
      t.timestamps
    end
  end
end
