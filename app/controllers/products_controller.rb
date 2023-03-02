class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def index
    @products = Product.all
    render :index
  end

  def create
    @product = Product.create(
      name: "Ecco 1's",
      price: 50,
      image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.la-botte.com%2F4DCGI%2Fvoir_us%2Fsoft-7-navy-blue%2Fshoes%2Fmen%2Fsneakers%2Fecco%2F&psig=AOvVaw3lwJYUOW9LdEiKhG1J3OCf&ust=1677872391734000&source=images&cd=vfe&ved=0CBAQjhxqFwoTCKi3j_H_vf0CFQAAAAAdAAAAABAH",
      description: "casual shoes that fit with most semiformal and casual outfits",
    )
    render :show
  end
end
