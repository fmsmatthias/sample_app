class AddPhoneToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :phone1, :string

    add_column :addresses, :phonem, :string

  end
end
