class Gift < ActiveRecord::Base
  attr_accessible :price, :vendor

  has_many :thoughts
  
end
