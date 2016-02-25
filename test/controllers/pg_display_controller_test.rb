require 'test_helper'

class PgDisplayControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get invoices" do
    get :invoices
    assert_response :success
  end

  test "should get products" do
    get :products
    assert_response :success
  end

end
