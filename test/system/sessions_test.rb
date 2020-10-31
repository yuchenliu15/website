require "application_system_test_case"

class SessionsTest < ApplicationSystemTestCase
    setup do
        @user = users(:one)
    end

    test "login successfully" do
        visit login_url
        fill_in "username", with: @user.name
        fill_in "password", with: "secret"
        click_on "Login"
        assert_selector "h1", text: "Welcome"
    end
end