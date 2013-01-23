class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.boolean :genre, null: false
      t.integer :level, default: 1
      t.integer :hp
      t.integer :strength
      t.integer :resistance
      t.integer :skill
      t.integer :armor
      t.integer :fire_power
      t.integer :experience

      t.timestamps
    end
    
    add_index :characters, :name
  end
end
