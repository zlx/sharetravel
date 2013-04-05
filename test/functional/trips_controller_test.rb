require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, {id: 1}
    assert_response :success
  end

  test "should get edit" do
    get :edit, {id: 1}
    assert_response :success
  end

end
