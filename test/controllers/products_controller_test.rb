require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
     include Devise::Test::IntegrationHelpers

  setup do
    @product = products(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get products_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    sign_in users(:one)
    assert_difference('Product.count') do
      post products_url, params: { product: { price: @product.price, title: @product.title } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    sign_in users(:one)
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    sign_in users(:one)
    patch product_url(@product), params: { product: { price: @product.price, title: @product.title } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    sign_in users(:one)
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
