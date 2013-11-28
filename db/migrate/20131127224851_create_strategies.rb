class CreateStrategies < ActiveRecord::Migration
  def change
    create_table :strategies do |t|
      t.string :name
      t.integer :player_id
      t.integer :slot_1
      t.integer :slot_2
      t.integer :slot_3
      t.integer :slot_4
      t.integer :slot_5
      t.integer :slot_6
      t.integer :slot_7
      t.integer :slot_8
      t.integer :slot_9
      t.integer :slot_10
      t.timestamps
    end
  end
end
