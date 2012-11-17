class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :vendor
      t.integer :price

      t.timestamps
    end
  end
end
