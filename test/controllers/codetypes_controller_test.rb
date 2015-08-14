require 'test_helper'

class CodetypesControllerTest < ActionController::TestCase
  setup do
    @codetype = codetypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:codetypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create codetype" do
    assert_difference('Codetype.count') do
      post :create, codetype: { description: @codetype.description, name: @codetype.name }
    end

    assert_redirected_to codetype_path(assigns(:codetype))
  end

  test "should show codetype" do
    get :show, id: @codetype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @codetype
    assert_response :success
  end

  test "should update codetype" do
    patch :update, id: @codetype, codetype: { description: @codetype.description, name: @codetype.name }
    assert_redirected_to codetype_path(assigns(:codetype))
  end

  test "should destroy codetype" do
    assert_difference('Codetype.count', -1) do
      delete :destroy, id: @codetype
    end

    assert_redirected_to codetypes_path
  end
end
