require "test_helper"

class TagTest < ActiveSupport::TestCase
  test "can create Tag model" do
    tag = Tag.new
    assert_nil tag.name
    assert_nil tag.description
  end
end
