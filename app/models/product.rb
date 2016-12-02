class Product < ApplicationRecord
  has_one :category
  has_many :line_items
  has_many :orders, through: :line_items
  has_attached_file :image, url: '/:basename.:extension'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.search(search)
    where('name LIKE ?', "%#{search}%") if search
  end
end
