require 'test_helper'

class EnenenesControllerTest < ActionController::TestCase
  setup do
    @enenene = enenenes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enenenes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enenene" do
    assert_difference('Enenene.count') do
      post :create, enenene: @enenene.attributes
    end

    assert_redirected_to enenene_path(assigns(:enenene))
  end

  test "should show enenene" do
    get :show, id: @enenene.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enenene.to_param
    assert_response :success
  end

  test "should update enenene" do
    put :update, id: @enenene.to_param, enenene: @enenene.attributes
    assert_redirected_to enenene_path(assigns(:enenene))
  end

  test "should destroy enenene" do
    assert_difference('Enenene.count', -1) do
      delete :destroy, id: @enenene.to_param
    end

    assert_redirected_to enenenes_path
  end
end
