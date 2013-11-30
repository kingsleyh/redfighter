class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.string :name
      t.integer :strength
      t.integer :level
      t.text :description
      t.text :category
      t.integer :used
      t.integer :uses
      t.timestamps
    end
  end
end
