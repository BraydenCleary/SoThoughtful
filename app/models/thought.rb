class Thought < ActiveRecord::Base
  attr_accessible :gift_id, :message_id, :recipient_id, :sender_id

  belongs_to :gift
  belongs_to :message
  belongs_to :recipient
  belongs_to :sender
  
end
