class Product < ApplicationRecord

  def self.search(search)
  if search
    where("name LIKE ?", "%#{search}%") 
  end
end
end
