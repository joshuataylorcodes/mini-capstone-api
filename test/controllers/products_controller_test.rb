require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "image_url", "description", "is_discounted?", "tax", "total", "quantity", "created_at", "updated_at"], data.keys
  end

  # test "create" do
  #   assert_difference "Product.count", 1 do
  #     post "/products.json", params: { name: "test product", price: 1, image_url: "image.jpg", description: "test description", quantity: 1 }
  #   end
  # end

  # test "update" do
  #   product = Product.first
  #   patch "/products/#{product.id}.json", params: { name: "Updated name" }
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal "Updated name", data["name"]
  # end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { name: "test", price: 10, image_url: "test.jpg", description: "test description" }
      assert_response 200
    end

    post "/products.json", params: {}
    assert_response 422
  end

  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal product.price, data["price"]
    assert_equal product.image_url, data["image_url"]
    assert_equal product.description, data["description"]
    assert_equal product.quantity, data["quantity"]

    patch "/products/#{product.id}.json", params: { name: "" }
    assert_response 422
  end
end
