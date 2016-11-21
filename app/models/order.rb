class Order < ApplicationRecord
  has_many :line_items
  has_many :products, :through => :line_items
  belongs_to :customer
  before_create :set_order_status
end

def subtotal
  order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
end

def set_order_status
  self.order_status_id = 1
end
