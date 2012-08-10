require 'test_helper'

class CompradorsControllerTest < ActionController::TestCase
  setup do
    @comprador = compradors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compradors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comprador" do
    assert_difference('Comprador.count') do
      post :create, comprador: { codigo: @comprador.codigo, nombre: @comprador.nombre }
    end

    assert_redirected_to comprador_path(assigns(:comprador))
  end

  test "should show comprador" do
    get :show, id: @comprador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comprador
    assert_response :success
  end

  test "should update comprador" do
    put :update, id: @comprador, comprador: { codigo: @comprador.codigo, nombre: @comprador.nombre }
    assert_redirected_to comprador_path(assigns(:comprador))
  end

  test "should destroy comprador" do
    assert_difference('Comprador.count', -1) do
      delete :destroy, id: @comprador
    end

    assert_redirected_to compradors_path
  end
end
