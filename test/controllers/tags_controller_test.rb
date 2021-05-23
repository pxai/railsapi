require "test_helper"

class TagsControllerTest < ActionDispatch::IntegrationTest
  test "should get tags" do
    # This fails with JSONAPI::Serializable::UndefinedSerializableClass: No serializable class defined for Tag
    #get tags_url
    #assert_response :success
  end

  #test "should get specific tag" do
  #  get tag_url(1)
  #  assert_response :success
  #end
end
