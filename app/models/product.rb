class Product < ApplicationRecord
  belongs_to :category
  has_many :order_details
  has_many :orders, through: :order_details
  has_many :cart_products
  has_many :carts, through: :cart_products

  validates :name, :description, :category_id, presence: true
  validates :price, :presence :true
  
  
end
