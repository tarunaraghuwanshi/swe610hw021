require 'test_helper'

class HosControllerTest < ActionController::TestCase
  setup do
    @ho = hos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ho" do
    assert_difference('Ho.count') do
      post :create, ho: { name: @ho.name }
    end

    assert_redirected_to ho_path(assigns(:ho))
  end

  test "should show ho" do
    get :show, id: @ho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ho
    assert_response :success
  end

  test "should update ho" do
    patch :update, id: @ho, ho: { name: @ho.name }
    assert_redirected_to ho_path(assigns(:ho))
  end

  test "should destroy ho" do
    assert_difference('Ho.count', -1) do
      delete :destroy, id: @ho
    end

    assert_redirected_to hos_path
  end
end
