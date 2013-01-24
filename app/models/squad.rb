class Squad < ActiveRecord::Base
  has_many :characters
  
  attr_accessible :name

  validates :name, presence: true
  validate :max_character_per_squad, on: :create

  def max_character_per_squad
  	errors.add(:base, I18n.t('.max_character_por_squad_reached')) unless characters.count <= 1
  end

  def as_json(options={})
  	super(include: :characters)
  end
end
