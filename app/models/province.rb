class Province < ApplicationRecord
  has_many :customers

  validates :name, :pst, :gst, :hst, presence: true
  validates :pst, :gst, :hst, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
end
