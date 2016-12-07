require 'test_helper'
#Add the two lines below for test colors
require "minitest/reporters"
Minitest::Reporters.use!

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # The test below translates to "Let’s test the Home page by issuing a GET request to the 
  # Static Pages home URL and then making sure we receive a ‘success’ status code in response."
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  
  #This test is added before adding the about page with the mentality "Test first/ Write failing tests first"
  end
    test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

end
