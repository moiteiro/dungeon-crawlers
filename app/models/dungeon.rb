class Dungeon < ActiveRecord::Base
  belongs_to :theme
  
  has_many :dungeon_squads
  has_many :squads, through: :dungeon_squads
  
  attr_accessible :name, :theme_id
  
  validates :name, presence: true
  validates :theme_id, presence: true
  
  def as_json(options)
    super(include: [:theme, :squads])
  end
end
