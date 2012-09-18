class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :season
      t.string :langu
      t.string :text

      t.timestamps
    end
  end
end
