class AddLanguToStatusvalue < ActiveRecord::Migration
  def change
    add_column :statusvalues, :langu, :string

  end
end
