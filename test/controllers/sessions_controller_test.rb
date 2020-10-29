require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  test "should login" do
    user = users(:one)
    post login_url,
      params: {name: user.name, password: 'secret'}
    assert_redirected_to admin_url
  end



end
