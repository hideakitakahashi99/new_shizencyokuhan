require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get farmertop" do
    get :farmertop
    assert_response :success
  end

end
