require 'test_helper'

class FishBowlsControllerTest < ActionController::TestCase
  setup do
    @fish_bowl = fish_bowls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fish_bowls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fish_bowl" do
    assert_difference('FishBowl.count') do
      post :create, fish_bowl: {  }
    end

    assert_redirected_to fish_bowl_path(assigns(:fish_bowl))
  end

  test "should show fish_bowl" do
    get :show, id: @fish_bowl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fish_bowl
    assert_response :success
  end

  test "should update fish_bowl" do
    patch :update, id: @fish_bowl, fish_bowl: {  }
    assert_redirected_to fish_bowl_path(assigns(:fish_bowl))
  end

  test "should destroy fish_bowl" do
    assert_difference('FishBowl.count', -1) do
      delete :destroy, id: @fish_bowl
    end

    assert_redirected_to fish_bowls_path
  end
end
