require 'test_helper'

class MatomesControllerTest < ActionController::TestCase
  setup do
    @matome = matomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matome" do
    assert_difference('Matome.count') do
      post :create, matome: { description: @matome.description, name: @matome.name }
    end

    assert_redirected_to matome_path(assigns(:matome))
  end

  test "should show matome" do
    get :show, id: @matome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matome
    assert_response :success
  end

  test "should update matome" do
    patch :update, id: @matome, matome: { description: @matome.description, name: @matome.name }
    assert_redirected_to matome_path(assigns(:matome))
  end

  test "should destroy matome" do
    assert_difference('Matome.count', -1) do
      delete :destroy, id: @matome
    end

    assert_redirected_to matomes_path
  end
end
