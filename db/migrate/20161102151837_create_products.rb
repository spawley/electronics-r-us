class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.decimal :price
      t.integer :stock_quantity
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
