class RemoveNeighborhoodAddNameToAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :neighborhood
    add_column :addresses, :name, :string
  end
end
