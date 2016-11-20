class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
end


def total_price
  price * quantity
end
