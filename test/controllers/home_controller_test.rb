require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get acercade" do
    get :acercade
    assert_response :success
  end

  test "should get servicio" do
    get :servicio
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
