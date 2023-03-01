Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "all_products"

  get "/one_product/:id", controller: "products", action: "one_product"

  get "/second_product", controller: "products", action: "second_product"

  get "/third_product", controller: "products", action: "third_product"
end
