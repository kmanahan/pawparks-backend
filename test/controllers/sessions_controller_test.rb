require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get sessions_login_url
    assert_response :success
  end

  test "should get automaticlogin" do
    get sessions_automaticlogin_url
    assert_response :success
  end

end
