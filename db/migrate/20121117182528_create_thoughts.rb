class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.string :sender_id
      t.string :recipient_id
      t.string :gift_id
      t.string :message_id

      t.timestamps
    end
  end
end
