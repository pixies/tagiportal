require 'test_helper'

class PatentesControllerTest < ActionController::TestCase
  setup do
    @patente = patentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patente" do
    assert_difference('Patente.count') do
      post :create, patente: { id_patente: @patente.id_patente, id_usuario_id: @patente.id_usuario_id, noma_patente: @patente.noma_patente }
    end

    assert_redirected_to patente_path(assigns(:patente))
  end

  test "should show patente" do
    get :show, id: @patente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patente
    assert_response :success
  end

  test "should update patente" do
    patch :update, id: @patente, patente: { id_patente: @patente.id_patente, id_usuario_id: @patente.id_usuario_id, noma_patente: @patente.noma_patente }
    assert_redirected_to patente_path(assigns(:patente))
  end

  test "should destroy patente" do
    assert_difference('Patente.count', -1) do
      delete :destroy, id: @patente
    end

    assert_redirected_to patentes_path
  end
end
