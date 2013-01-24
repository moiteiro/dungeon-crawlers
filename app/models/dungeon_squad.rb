class DungeonSquad < ActiveRecord::Base
  belongs_to :dungeon
  belongs_to :squad
end
