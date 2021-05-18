require "test_helper"

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get about_about_url
    assert_response :success
  end

  test "should get about info" do
    get about_about_url
    expected = "{\"name\":\"railsapi\",\"year\":\"2021\"}"
    assert_equal @response.body, expected
  end
end
