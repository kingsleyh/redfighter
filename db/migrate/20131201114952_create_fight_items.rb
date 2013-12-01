class CreateFightItems < ActiveRecord::Migration
  def change
    create_table :fight_items do |t|
      t.string :name
      t.integer :strength
      t.integer :level
      t.text :description
      t.text :category
      t.string :kind
      t.integer :spell_action_id
      t.timestamps
      t.timestamps
    end
  end
end
