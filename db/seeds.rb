# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sender.destroy_all
Recipient.destroy_all
Gift.destroy_all
Message.destroy_all
Thought.destroy_all

senders = [
	{:first_name => 'Brayden', :last_name => 'Cleary', :email => 'brayden.cleary@example.com', :password_digest => nil, :signed_up => true},
	{:first_name => 'Brett', :last_name => 'Hoyer', :email => 'brett.hoyer@example.com', :password_digest => nil, :signed_up => false},
		  ]

recipients = [
	{:first_name => 'Lyssa', :last_name => 'Cleary', :email => 'lyssa.cleary@example.com', :phone => '0123456789' },
	{:first_name => 'Darcy', :last_name => 'Cleary', :email => 'darcy.clear@example.com', :phone => '0123456788'} 
			]

gifts = [
	{:vendor => 'Dunkin', :price => 5},
	{:vendor => 'Starbucks', :price => 5}
]

messages = [
	{:title => 'Hey', :note => 'Just thinking of you...'},
	{:title => 'Sorry', :note => 'So sorry to hear about Sparky. Have a coffee on me.'}
]

Sender.create senders

Recipient.create recipients

Gift.create gifts

Message.create messages

thoughts = [
	{:sender_id => Sender.find_by_first_name('Brayden').id, :recipient_id => Recipient.find_by_first_name('Lyssa').id, :gift_id => Gift.find_by_vendor('Dunkin').id, :message_id => Message.find_by_title('Hey').id},
	{:sender_id => Sender.find_by_first_name('Brayden').id, :recipient_id => Recipient.find_by_first_name('Darcy').id, :gift_id => Gift.find_by_vendor('Starbucks').id, :message_id => Message.find_by_title('Sorry').id }
]


Thought.create thoughts