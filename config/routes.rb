Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  get "/suppliers" => "suppliers#index"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"

  get "/orders/:id" => "orders#show"

  get "/orders" => "orders#index"

  post "/carted_products" => "carted_products#create"

  get "/carted_products" => "carted_products#index"

  delete "/carted_products/:id" => "carted_products#destroy"
end
