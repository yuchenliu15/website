require "application_system_test_case"

class AdminTest < ApplicationSystemTestCase
    test "Logout button works" do
        visit admin_url
        click_on "logout"
        assert_selector 'h2', text: 'Log in'

        visit admin_url
        assert_selector 'h2', text: 'Log in'
    end
end