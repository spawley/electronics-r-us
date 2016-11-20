class AddSubtotalToLineItem < ActiveRecord::Migration[5.0]
  def change
    add_column :line_items, :subtotal, :decimal
  end
end
