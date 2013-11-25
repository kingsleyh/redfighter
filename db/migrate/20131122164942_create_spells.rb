class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.integer :player_id
      t.integer :spell_action_id
      t.integer :level
      t.text :description
      t.text :category
      t.integer :used
      t.integer :uses
      t.timestamps
    end
  end
end

