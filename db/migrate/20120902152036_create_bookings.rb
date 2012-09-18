class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :adate
      t.date    :ddate
      t.integer :nights
      t.integer :people
      t.decimal :cleaning
      t.decimal :price
      t.decimal :downp
      t.integer :user_id

      t.timestamps
    end
  end
end
