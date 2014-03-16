class AddGroupsToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :group1, :boolean
    add_column :admins, :group2, :boolean
    add_column :admins, :group3, :boolean
  end
end
