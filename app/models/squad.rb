class Squad < ActiveRecord::Base
  has_many :characters
  has_many :dungeon_squads
  has_many :dungeons, through: :dungeon_squads
  
  attr_accessible :name
end
