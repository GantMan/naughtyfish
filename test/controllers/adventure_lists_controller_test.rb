require 'test_helper'

class AdventureListsControllerTest < ActionController::TestCase
  setup do
    @adventure_list = adventure_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adventure_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adventure_list" do
    assert_difference('AdventureList.count') do
      post :create, adventure_list: { action_id: @adventure_list.action_id, adventure: @adventure_list.adventure, user_id: @adventure_list.user_id }
    end

    assert_redirected_to adventure_list_path(assigns(:adventure_list))
  end

  test "should show adventure_list" do
    get :show, id: @adventure_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adventure_list
    assert_response :success
  end

  test "should update adventure_list" do
    patch :update, id: @adventure_list, adventure_list: { action_id: @adventure_list.action_id, adventure: @adventure_list.adventure, user_id: @adventure_list.user_id }
    assert_redirected_to adventure_list_path(assigns(:adventure_list))
  end

  test "should destroy adventure_list" do
    assert_difference('AdventureList.count', -1) do
      delete :destroy, id: @adventure_list
    end

    assert_redirected_to adventure_lists_path
  end
end
