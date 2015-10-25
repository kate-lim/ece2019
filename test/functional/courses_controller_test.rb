require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  test "should get courses" do
    get :courses
    assert_response :success
  end

end
