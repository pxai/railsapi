require "test_helper"

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get courses" do
    get courses_url
    assert_response :success
  end

  test "should get specific course" do
    get course_url(1)
    assert_response :success
  end

  test "should create course" do
    post courses_url(name: "aaa", )
    assert_response :success
  end
end
