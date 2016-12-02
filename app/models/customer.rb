class Customer < ApplicationRecord
  belongs_to :province
  has_many :orders

  validates :name, :address, presence: true
end
