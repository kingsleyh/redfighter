class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.integer :level
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
