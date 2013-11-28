class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.integer :fighter_1_id
      t.integer :fighter_2_id
      t.integer :winner_id
      t.timestamps
    end
  end
end
