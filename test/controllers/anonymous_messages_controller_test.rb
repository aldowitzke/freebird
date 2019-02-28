require 'test_helper'

class AnonymousMessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get anonymous_messages_create_url
    assert_response :success
  end

end
