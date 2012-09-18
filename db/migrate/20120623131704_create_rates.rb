class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :apartment
      t.integer :season
      t.integer :price

      t.timestamps
    end
  end
end
