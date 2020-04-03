require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "DormRate"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | DormRate"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | DormRate"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | DormRate"
  end

test "should get hall" do
    get hall_path
    assert_response :success
    assert_select "title", "Random Dorm | DormRate"
    end
end
