class Character < ActiveRecord::Base
  belongs_to :squad
  
  # Basic info
  attr_accessible :name, :genre, :squad_id
  
  # Battle attributes
  attr_accessible :level, :strength, :skill, :resistance, :armor, :fire_power, :experience
  
  # Calculated by attributes
  attr_accessible :hp
  
  before_save :calculate_max_hp
  
  validates :name, presence: true
  validates_associated :squad
  validate :squad_size_limit
  validate :max_value_per_battle_attribute, on: :create
  validate :skill_points_used, on: :create
  
  def battle_attributes
    { strength: strength, skill: skill, resistance: resistance, armor: armor, fire_power: fire_power }
  end
  
  def attributes_sum
    strength.to_i + skill.to_i + resistance.to_i + armor.to_i + fire_power.to_i
  end
  
  def squad_size_limit
    errors.add(:base, I18n.t('.squad_limit_reached')) unless squad.characters.length < Squad::CHARACTERS_LIMIT
  end
  
  def max_value_per_battle_attribute
    battle_attributes.each_pair do |k, v|
      errors.add(k, I18n.t('.greater_than')) unless v.to_i <= 5
    end
  end
  
  def skill_points_used
    errors.add(:base, I18n.t('.max_points_reached')) unless attributes_sum <= 10
  end
  
  def calculate_max_hp
    self.hp = resistance.to_i * 5
  end
end
