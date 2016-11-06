class AddImageToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image, :text
  end
end
