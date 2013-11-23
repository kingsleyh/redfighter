class CreateExits < ActiveRecord::Migration
  def change
    create_table :exits do |t|
      t.string :name
      t.integer :room_id
      t.integer :leads_to_room_id
      t.text :description
      t.timestamps
    end
  end
end
