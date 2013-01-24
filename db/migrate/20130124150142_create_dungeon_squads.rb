class CreateDungeonSquads < ActiveRecord::Migration
  def change
    create_table :dungeon_squads do |t|
      t.references :dungeon
      t.references :squad

      t.timestamps
    end
  end
end
