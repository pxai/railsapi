require "test_helper"

class CourseTest < ActiveSupport::TestCase
  test "Course model exists" do
    course = Course.new
    assert_nil course.title
    assert_nil course.description
    assert_nil course.published
  end
end
