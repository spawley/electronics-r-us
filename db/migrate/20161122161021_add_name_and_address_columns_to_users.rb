class AddNameAndAddressColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :text
    add_column :users, :address, :text
  end
end
