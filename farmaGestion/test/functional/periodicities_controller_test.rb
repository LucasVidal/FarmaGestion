require 'test_helper'

class PeriodicitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:periodicities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create periodicity" do
    assert_difference('Periodicity.count') do
      post :create, :periodicity => { }
    end

    assert_redirected_to periodicity_path(assigns(:periodicity))
  end

  test "should show periodicity" do
    get :show, :id => periodicities(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => periodicities(:one).to_param
    assert_response :success
  end

  test "should update periodicity" do
    put :update, :id => periodicities(:one).to_param, :periodicity => { }
    assert_redirected_to periodicity_path(assigns(:periodicity))
  end

  test "should destroy periodicity" do
    assert_difference('Periodicity.count', -1) do
      delete :destroy, :id => periodicities(:one).to_param
    end

    assert_redirected_to periodicities_path
  end
end
