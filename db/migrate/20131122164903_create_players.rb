class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :health
      t.integer :level
      t.integer :group_id
      t.integer :room_id
      t.integer :previous_room_id
      t.integer :category
      t.integer :user_id
      t.timestamps
    end
  end
end
