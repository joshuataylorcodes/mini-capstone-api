class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :inventory, presence: true

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
