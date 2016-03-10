require 'test_helper'

class SubcomponentsControllerTest < ActionController::TestCase
  setup do
    @subcomponent = subcomponents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcomponents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcomponent" do
    assert_difference('Subcomponent.count') do
      post :create, subcomponent: { active: @subcomponent.active, behaviour: @subcomponent.behaviour, description: @subcomponent.description, editorid: @subcomponent.editorid, followerid: @subcomponent.followerid, meat: @subcomponent.meat, ownerid: @subcomponent.ownerid, refid: @subcomponent.refid, subs: @subcomponent.subs, title: @subcomponent.title, titleimage: @subcomponent.titleimage, viewable: @subcomponent.viewable, views: @subcomponent.views }
    end

    assert_redirected_to subcomponent_path(assigns(:subcomponent))
  end

  test "should show subcomponent" do
    get :show, id: @subcomponent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subcomponent
    assert_response :success
  end

  test "should update subcomponent" do
    patch :update, id: @subcomponent, subcomponent: { active: @subcomponent.active, behaviour: @subcomponent.behaviour, description: @subcomponent.description, editorid: @subcomponent.editorid, followerid: @subcomponent.followerid, meat: @subcomponent.meat, ownerid: @subcomponent.ownerid, refid: @subcomponent.refid, subs: @subcomponent.subs, title: @subcomponent.title, titleimage: @subcomponent.titleimage, viewable: @subcomponent.viewable, views: @subcomponent.views }
    assert_redirected_to subcomponent_path(assigns(:subcomponent))
  end

  test "should destroy subcomponent" do
    assert_difference('Subcomponent.count', -1) do
      delete :destroy, id: @subcomponent
    end

    assert_redirected_to subcomponents_path
  end
end
