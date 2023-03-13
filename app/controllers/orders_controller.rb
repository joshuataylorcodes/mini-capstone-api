class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    product = Product.find_by(id: params[:product_id])

    calc_subtotal = product.price * params[:quantity].to_i
    calc_tax = calc_subtotal * 0.09
    calc_total = calc_subtotal + calc_tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
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
