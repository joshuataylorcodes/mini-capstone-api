Rails.application.routes.draw do
  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/product" => "products#create"
end
