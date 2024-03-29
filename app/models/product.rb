class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :price, presence: true
  # validates :quantity, presence: true, numericality: { greater_then: 0 }

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :users, through: :carted_products

  def is_discounted?
    x = false
    if price <= 10
      x = true
    end
    return x
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end
end
