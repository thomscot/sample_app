require 'test_helper'
#Add the two lines below for test colors
require "minitest/reporters"
Minitest::Reporters.use!

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  
  # The test below translates to "Let’s test the Home page by issuing a GET request to the 
  # Static Pages home URL and then making sure we receive a ‘success’ status code in response."
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    # assert_select lets us test for the presence of a particular HTML tag 
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  
  #This test is added before adding the about page with the mentality "Test first/ Write failing tests first"
  end
    test "should get about" do
    get static_pages_about_url
    assert_response :success
     assert_select "title", "About | #{@base_title}"
  end

end
