class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :email
      t.integer :province_id

      t.timestamps
    end
  end
end
