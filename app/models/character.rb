class Character < ActiveRecord::Base
  attr_accessible :armor, :experience, :fire_power, :genre, :hp, :level, :name, :resistance, :skill, :strength
end
