require 'test_helper'

class PlacardsControllerTest < ActionController::TestCase
  setup do
    @placard = placards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:placards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create placard" do
    assert_difference('Placard.count') do
      post :create, placard: { description: @placard.description, name: @placard.name }
    end

    assert_redirected_to placard_path(assigns(:placard))
  end

  test "should show placard" do
    get :show, id: @placard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @placard
    assert_response :success
  end

  test "should update placard" do
    patch :update, id: @placard, placard: { description: @placard.description, name: @placard.name }
    assert_redirected_to placard_path(assigns(:placard))
  end

  test "should destroy placard" do
    assert_difference('Placard.count', -1) do
      delete :destroy, id: @placard
    end

    assert_redirected_to placards_path
  end
end
