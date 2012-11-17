class Recipient < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone

  has_many :thoughts
end
