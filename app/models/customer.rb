class Customer < ApplicationRecord
  belongs_to :province
  has_many :orders
end
