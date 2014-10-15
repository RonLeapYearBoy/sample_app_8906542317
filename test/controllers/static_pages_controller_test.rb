#  Listing 3.13: A test for the About page. red
#
#  gedit   test/controllers/static_pages_controller_test.rb
#
# we can see that there are two tests, one for each controller action we included on the
# command line in Listing 3.4. Each test simply gets an action and verifies (via an assertion)
# that the result is a success.

require 'test_helper'
class StaticPagesControllerTest < ActionController::TestCase

# says Lets test the Home page by issuing a GET request to the home action and then making
# sure we receive a success status code in response.
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :about
    assert_response :success
  end

end

