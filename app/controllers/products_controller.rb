class ProductsController < ApplicationController
  def first_product
    @product = Product.first
    render template: "products/show"
  end

  def second_product
    @product = Product.second
    render template: "products/show"
  end

  def third_product
    @product = Product.last
    render template: "products/show"
  end

  def all_products
    @products = Product.all
    render template: "products/index"
  end
end
