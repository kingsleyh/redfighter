class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.integer :level
      t.integer :area_id
      t.timestamps
    end
  end
end
