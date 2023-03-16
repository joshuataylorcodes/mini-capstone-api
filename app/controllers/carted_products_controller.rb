class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
    )
    @carted_product.save
    render :show
  end

  def index
    @carted_products = CartedProduct.all

    if params[:carted_product]
      carted_product = CartedProduct.find_by(status: params[:carted_product])
      @products = carted_product.products
    end

    render :index
  end

  # def show
  #   @carted_product = CartedProduct.find_by(id: params[:id])
  #   render :show
  # end
end
