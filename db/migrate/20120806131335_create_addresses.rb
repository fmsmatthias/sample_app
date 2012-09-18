class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :streetno
      t.string :zip
      t.string :city
      t.string :country
      t.integer :user_id

      t.timestamps
    end
  end
end
