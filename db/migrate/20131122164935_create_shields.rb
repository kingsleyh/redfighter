class CreateShields < ActiveRecord::Migration
  def change
    create_table :shields do |t|
      t.integer :player_id
      t.integer :strength
      t.integer :level
      t.text :description
      t.text :category
      t.integer :used
      t.timestamps
    end
  end
end
