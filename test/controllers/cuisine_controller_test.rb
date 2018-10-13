require 'test_helper'

class CuisineControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cuisine_show_url
    assert_response :success
  end

end
