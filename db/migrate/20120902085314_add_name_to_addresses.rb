class AddNameToAddresses < ActiveRecord::Migration

  def change
    add_column :addresses, :fname, :string

    add_column :addresses, :string, :string

    add_column :addresses, :lname, :string

  end

def down
    remove_column :addresses, :string, :string
  end

end
