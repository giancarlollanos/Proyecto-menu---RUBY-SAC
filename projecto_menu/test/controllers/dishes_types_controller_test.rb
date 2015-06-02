require 'test_helper'

class DishesTypesControllerTest < ActionController::TestCase
  setup do
    @dishes_type = dishes_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dishes_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dishes_type" do
    assert_difference('DishesType.count') do
      post :create, dishes_type: { description: @dishes_type.description, order_status_id: @dishes_type.order_status_id }
    end

    assert_redirected_to dishes_type_path(assigns(:dishes_type))
  end

  test "should show dishes_type" do
    get :show, id: @dishes_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dishes_type
    assert_response :success
  end

  test "should update dishes_type" do
    patch :update, id: @dishes_type, dishes_type: { description: @dishes_type.description, order_status_id: @dishes_type.order_status_id }
    assert_redirected_to dishes_type_path(assigns(:dishes_type))
  end

  test "should destroy dishes_type" do
    assert_difference('DishesType.count', -1) do
      delete :destroy, id: @dishes_type
    end

    assert_redirected_to dishes_types_path
  end
end
