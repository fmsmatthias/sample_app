class CreateUstatuses < ActiveRecord::Migration
  def change
    create_table :ustatuses do |t|
      t.integer :user_id
      t.integer :status
      t.date :sdate

      t.timestamps
    end
  end
end
