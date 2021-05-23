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

  test "should update course" do
    get course_url(1)
    course = JSON.parse(@response.body)

    course['title'] = "changed"
    put course_url(1, course)
    assert_response :success

    updatedCourse = JSON.parse(@response.body)

    get course_url(1)
    course = JSON.parse(@response.body)

    assert_equal course['title'], updatedCourse['title']
  end

  test "should delete course" do
    idToDelete = '1'
    get course_url(idToDelete)
    course = JSON.parse(@response.body)
    assert_response :success
    assert_not_nil course

    delete course_url(idToDelete)
    assert_response :success
    response = JSON.parse(@response.body)

    assert_equal idToDelete, response['id']
  end

  test "should not delete non-existent course" do
    idToDelete = '1'

    delete course_url(idToDelete)
    assert_response :success
    response = JSON.parse(@response.body)
  end
end
