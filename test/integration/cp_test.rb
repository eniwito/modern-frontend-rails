require 'test_helper'

class CpTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "unauthorized administrators can't view cp#dashboard index and redirect to sign in form" do
    get "/cp"
    assert_response :redirect
  end

  test 'authorized administrators can view cp#dashboard index' do
    sign_in admins(:one)

    get '/cp'
    assert_response :success
  end
end