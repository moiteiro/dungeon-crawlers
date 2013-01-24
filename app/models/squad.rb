class Squad < ActiveRecord::Base
  CHARACTERS_LIMIT = 3
  
  has_many :characters
  
  attr_accessible :name

  validates :name, presence: true
  validates :characters, length: { maximum: CHARACTERS_LIMIT }

  def as_json(options={})
  	super(include: :characters)
  end
end
