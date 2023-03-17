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

    if params[:status]
      @carted_products = CartedProduct.where(status: "carted")
    end

    render :index
  end

  # def show
  #   @carted_product = CartedProduct.find_by(id: params[:id])
  #   render :show
  # end
end
