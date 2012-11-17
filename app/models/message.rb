class Message < ActiveRecord::Base
  attr_accessible :note, :title

  has_many :thoughts
end
