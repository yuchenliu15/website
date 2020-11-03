require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_url
    assert_response :success
  end

  test "should save file" do
    file = fixture_file_upload('files/resume.pdf', 'application/pdf')
    post admin_url, params: { file: file}
    assert_response :success
  end

end
