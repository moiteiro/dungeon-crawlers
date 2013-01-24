class Squad < ActiveRecord::Base
  has_many :characters
  
  attr_accessible :name

  validates :name, presence: true
  validates :characters, length: { maximum: 3 }

  def as_json(options={})
  	super(include: :characters)
  end
end
