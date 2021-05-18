require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "Entry model works" do
    entry = Entry.new
    assert_nil entry.title
    assert_nil entry.body
  end
end
