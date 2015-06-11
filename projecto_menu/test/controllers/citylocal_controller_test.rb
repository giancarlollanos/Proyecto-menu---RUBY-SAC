require 'test_helper'

class CitylocalControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
