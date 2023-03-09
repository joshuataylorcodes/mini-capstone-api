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
    assert_equal ["id", "name", "price", "description", "images", "is_discounted?", "tax", "total", "quantity", "supplier_id", "created_at", "updated_at", "supplier"], data.keys
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { supplier_id: Supplier.first.id, price: 1, name: "test product", description: "test description", quantity: 1 }
      data = JSON.parse(response.body)
      assert_response 200
      refute_nil data["id"]
      assert_equal "test product", data["name"]
      # assert_equal 1, data["price"]
      assert_equal "test description", data["description"]
      assert_equal 1, data["quantity"]
    end

    # post "/products.json", params: {}
    # assert_response 422
  end

  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]

    #   patch "/products/#{product.id}.json", params: { name: "" }
    #   assert_response 422
  end
end
