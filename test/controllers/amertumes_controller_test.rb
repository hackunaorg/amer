require 'test_helper'

class AmertumesControllerTest < ActionController::TestCase
  setup do
    @amertume = amertumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amertumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amertume" do
    assert_difference('Amertume.count') do
      post :create, amertume: { content: @amertume.content, title: @amertume.title, user_id: @amertume.user_id }
    end

    assert_redirected_to amertume_path(assigns(:amertume))
  end

  test "should show amertume" do
    get :show, id: @amertume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amertume
    assert_response :success
  end

  test "should update amertume" do
    patch :update, id: @amertume, amertume: { content: @amertume.content, title: @amertume.title, user_id: @amertume.user_id }
    assert_redirected_to amertume_path(assigns(:amertume))
  end

  test "should destroy amertume" do
    assert_difference('Amertume.count', -1) do
      delete :destroy, id: @amertume
    end

    assert_redirected_to amertumes_path
  end
end
