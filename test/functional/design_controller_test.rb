require 'test_helper'

class DesignControllerTest < ActionController::TestCase
  test "should get city" do
    get :city
    assert_response :success
  end

  test "should get scene" do
    get :scene
    assert_response :success
  end

end
