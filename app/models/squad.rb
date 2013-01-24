class Squad < ActiveRecord::Base
  has_many :characters
  
  attr_accessible :name
end
