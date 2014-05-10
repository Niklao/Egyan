require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get univ" do
    get :univ
    assert_response :success
  end

end
