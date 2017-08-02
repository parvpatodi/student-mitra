require 'test_helper'

class TechwordsControllerTest < ActionController::TestCase
  setup do
    @techword = techwords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techwords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create techword" do
    assert_difference('Techword.count') do
      post :create, techword: { definition: @techword.definition, name: @techword.name }
    end

    assert_redirected_to techword_path(assigns(:techword))
  end

  test "should show techword" do
    get :show, id: @techword
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @techword
    assert_response :success
  end

  test "should update techword" do
    patch :update, id: @techword, techword: { definition: @techword.definition, name: @techword.name }
    assert_redirected_to techword_path(assigns(:techword))
  end

  test "should destroy techword" do
    assert_difference('Techword.count', -1) do
      delete :destroy, id: @techword
    end

    assert_redirected_to techwords_path
  end
end
