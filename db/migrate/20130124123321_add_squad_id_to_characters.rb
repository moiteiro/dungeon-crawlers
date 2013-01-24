class AddSquadIdToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :squad_id, :integer
    
    add_index :characters, :squad_id
  end
end
