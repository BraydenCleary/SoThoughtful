class Sender < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password_digest, :signed_up

  has_many :thoughts
end
