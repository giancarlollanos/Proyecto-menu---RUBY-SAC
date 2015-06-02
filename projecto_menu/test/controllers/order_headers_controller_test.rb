require 'test_helper'

class OrderHeadersControllerTest < ActionController::TestCase
  setup do
    @order_header = order_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_header" do
    assert_difference('OrderHeader.count') do
      post :create, order_header: { address_customer: @order_header.address_customer, amount: @order_header.amount, date_canceled: @order_header.date_canceled, date_order: @order_header.date_order, date_update: @order_header.date_update, datos_customer: @order_header.datos_customer, menus_id: @order_header.menus_id, observations: @order_header.observations, order_status_id: @order_header.order_status_id, phone_customer: @order_header.phone_customer }
    end

    assert_redirected_to order_header_path(assigns(:order_header))
  end

  test "should show order_header" do
    get :show, id: @order_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_header
    assert_response :success
  end

  test "should update order_header" do
    patch :update, id: @order_header, order_header: { address_customer: @order_header.address_customer, amount: @order_header.amount, date_canceled: @order_header.date_canceled, date_order: @order_header.date_order, date_update: @order_header.date_update, datos_customer: @order_header.datos_customer, menus_id: @order_header.menus_id, observations: @order_header.observations, order_status_id: @order_header.order_status_id, phone_customer: @order_header.phone_customer }
    assert_redirected_to order_header_path(assigns(:order_header))
  end

  test "should destroy order_header" do
    assert_difference('OrderHeader.count', -1) do
      delete :destroy, id: @order_header
    end

    assert_redirected_to order_headers_path
  end
end
