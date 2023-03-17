class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
    )
    if @carted_product.save
      render :show
    else
      render json: { errors: @carted_product.errors.full_messages }
    end
  end

  def index
    # @carted_products = CartedProduct.all
    @carted_products = current_user.carted_products.where(status: "carted")
    render :index
  end

  # def show
  #   @carted_product = CartedProduct.find_by(id: params[:id])
  #   render :show
  # end

  def destroy
    @carted_products = current_user.carted_products.find_by(id: params:[id], status: "carted")
    carted_product.update(status: "removed")
    render json: {status: "Carted product removed!"}
  end
end
