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
    post courses_url(title: "aaa", description: "bbb", published: "ccc")
    assert_response :success

    course = JSON.parse(@response.body)

    get course_url(course['id'])
    generated = JSON.parse(@response.body)

    assert_equal generated, course
  end
end
