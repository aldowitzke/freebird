require 'test_helper'

class AnonymousControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get anonymous_create_url
    assert_response :success
  end

end
