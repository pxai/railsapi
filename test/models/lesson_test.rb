require "test_helper"

class LessonTest < ActiveSupport::TestCase
  test "Lesson model works" do
    lesson = Lesson.new
    assert_nil lesson.name
    assert_nil lesson.description
  end

  test "short description works" do
    lesson = Lesson.new(name: "Epa", description: "Bla"*100)
    assert_equal lesson.name, "Epa"
    assert_equal lesson.shortDescription.length, 40
  end
end
