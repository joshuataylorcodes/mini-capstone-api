class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :product, through: :carted_products
end
