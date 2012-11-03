class CreateStatusvalues < ActiveRecord::Migration
  def change
    create_table :statusvalues do |t|
      t.integer :status
      t.string :text

      t.timestamps
    end
  end
end
