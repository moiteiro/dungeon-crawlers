class CreateSquads < ActiveRecord::Migration
  def change
    create_table :squads do |t|
      t.string :name

      t.timestamps
    end
    
    add_index :squads, :name
  end
end
