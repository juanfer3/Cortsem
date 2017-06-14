require 'test_helper'

class ProgramacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programacion = programaciones(:one)
  end

  test "should get index" do
    get programaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_programacion_url
    assert_response :success
  end

  test "should create programacion" do
    assert_difference('Programacion.count') do
      post programaciones_url, params: { programacion: { cantidad: @programacion.cantidad, f_entrega: @programacion.f_entrega, pedido_id: @programacion.pedido_id, pieza: @programacion.pieza, prenda: @programacion.prenda, talla: @programacion.talla, telas_id: @programacion.telas_id } }
    end

    assert_redirected_to programacion_url(Programacion.last)
  end

  test "should show programacion" do
    get programacion_url(@programacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_programacion_url(@programacion)
    assert_response :success
  end

  test "should update programacion" do
    patch programacion_url(@programacion), params: { programacion: { cantidad: @programacion.cantidad, f_entrega: @programacion.f_entrega, pedido_id: @programacion.pedido_id, pieza: @programacion.pieza, prenda: @programacion.prenda, talla: @programacion.talla, telas_id: @programacion.telas_id } }
    assert_redirected_to programacion_url(@programacion)
  end

  test "should destroy programacion" do
    assert_difference('Programacion.count', -1) do
      delete programacion_url(@programacion)
    end

    assert_redirected_to programaciones_url
  end
end
