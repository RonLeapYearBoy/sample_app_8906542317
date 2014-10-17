
# --------------static_pages_controller_test.rb ------------------------------------ #
# ---        09.000-Static-Pages-Controller-Test.txt                             --- #
# ---------------------------------------------------------------------------------- #
# ---                                                                            --- #
# 3.4.1 Testing titles (Red)                                                         #
# https://www.railstutorial.org/book/static_pages#sec-testing_titles                 #
#                                                                                    #
# Listing 3.22: The Static Pages controller test with title tests.                   #
# https://www.railstutorial.org/book/static_pages#code-custom_home_page              #
#                                                                                    #
#  gedit test/controllers/static_pages_controller_test.rb                            #
#                                                                                    #
# checks for the presence of a <title> tag containing the string                     #
# "Home | Ruby on Rails Tutorial Sample App"                                         #
# ---------------------------------------------------------------------------------- #

require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "should get contactt" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end

end
# ---------------------------------------------------------------------------------- #


