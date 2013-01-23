class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.boolean :genre
      t.integer :level
      t.integer :hp
      t.integer :strength
      t.integer :resistance
      t.integer :skill
      t.integer :armor
      t.integer :fire_power
      t.integer :experience

      t.timestamps
    end
  end
end
