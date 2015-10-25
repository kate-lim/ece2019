require 'test_helper'

class ClassmatesControllerTest < ActionController::TestCase
  test "should get classmates" do
    get :classmates
    assert_response :success
  end

end
