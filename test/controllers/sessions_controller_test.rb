require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  test "should login" do
    user = users(:one)
    post login_url,
      params: {name: user.name, password: 'secret'}
    assert_redirected_to admin_url
  end

  test "login helper" do
    login_as(users(:one))
    assert_redirected_to admin_url
  end

end
