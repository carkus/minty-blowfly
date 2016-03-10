require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Welcome"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About us"
  end

  test "should get directions" do
    get :directions
    assert_response :success
    assert_select "title", "Directions"
  end
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact"
  end

end
