class CreateSenders < ActiveRecord::Migration
  def change
    create_table :senders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.boolean :signed_up

      t.timestamps
    end
  end
end
