class Product < ApplicationRecord

  has_one :category
  has_many :line_items
  has_many :orders, :through => :line_items

  def self.search(search)
    if search
      where("name LIKE ?", "%#{search}%")
    end
  end

end
