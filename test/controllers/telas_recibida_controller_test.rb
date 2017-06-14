require 'test_helper'

class TelasRecibidaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tela_recibida = telas_recibida(:one)
  end

  test "should get index" do
    get telas_recibida_url
    assert_response :success
  end

  test "should get new" do
    get new_tela_recibida_url
    assert_response :success
  end

  test "should create tela_recibida" do
    assert_difference('TelaRecibida.count') do
      post telas_recibida_url, params: { tela_recibida: { cantidad_devuelta: @tela_recibida.cantidad_devuelta, cantidad_recibida: @tela_recibida.cantidad_recibida, descripcion: @tela_recibida.descripcion, tipo_unidad: @tela_recibida.tipo_unidad, total: @tela_recibida.total, val_unit: @tela_recibida.val_unit } }
    end

    assert_redirected_to tela_recibida_url(TelaRecibida.last)
  end

  test "should show tela_recibida" do
    get tela_recibida_url(@tela_recibida)
    assert_response :success
  end

  test "should get edit" do
    get edit_tela_recibida_url(@tela_recibida)
    assert_response :success
  end

  test "should update tela_recibida" do
    patch tela_recibida_url(@tela_recibida), params: { tela_recibida: { cantidad_devuelta: @tela_recibida.cantidad_devuelta, cantidad_recibida: @tela_recibida.cantidad_recibida, descripcion: @tela_recibida.descripcion, tipo_unidad: @tela_recibida.tipo_unidad, total: @tela_recibida.total, val_unit: @tela_recibida.val_unit } }
    assert_redirected_to tela_recibida_url(@tela_recibida)
  end

  test "should destroy tela_recibida" do
    assert_difference('TelaRecibida.count', -1) do
      delete tela_recibida_url(@tela_recibida)
    end

    assert_redirected_to telas_recibida_url
  end
end
