require 'test_helper'

class PublicTest < ActionDispatch::IntegrationTest
  test "root/main page render successfully" do
    get "/"
    assert_response :success
  end
end