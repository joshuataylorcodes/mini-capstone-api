class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    @carted_products = current_user.carted_products.where(status: "carted")

    calc_subtotal = 0
    carted_products.each do |carted_product|
      calc_subtotal += carted_product.quantity * carted_product.product.price
    end
    calc_tax = calc_subtotal * 0.09
    calc_total = calc_subtotal + calc_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: calc_total,
    )
    # if @order.save
    #   render json: { message: "Order was created sucessfuly" }, status: :created
    # else
    #   render json: { errors: order.errors.full_messages }, status: :bad_request
    # end
    @order.save
    carted_products.update_all(status: "purchased", order_id: @order.id)
    render :show
  end

  def show
    if current_user
      @order = current_user.orders.find_by(id: params[:id])
      render :show
    else
      render :json[], status: :unauthorized
    end
  end

  def index
    @orders = current_user.orders
    render :index
  end
end
