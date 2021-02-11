require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get index_home_url
    assert_response :success
  end

  test "should get team" do
    get index_team_url
    assert_response :success
  end

  test "should get contact" do
    get index_contact_url
    assert_response :success
  end

  test "should get welcome" do
    get index_welcome_url
    assert_response :success
  end

end
