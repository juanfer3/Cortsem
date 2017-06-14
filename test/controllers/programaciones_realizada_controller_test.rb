require 'test_helper'

class ProgramacionesRealizadaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programacion_realizada = programaciones_realizada(:one)
  end

  test "should get index" do
    get programaciones_realizada_url
    assert_response :success
  end

  test "should get new" do
    get new_programacion_realizada_url
    assert_response :success
  end

  test "should create programacion_realizada" do
    assert_difference('ProgramacioneRealizada.count') do
      post programaciones_realizada_url, params: { programacion_realizada: { cantidad: @programacion_realizada.cantidad, fecha: @programacion_realizada.fecha, pieza: @programacion_realizada.pieza, prenda: @programacion_realizada.prenda, programacion_id: @programacion_realizada.programacion_id, talla: @programacion_realizada.talla, telas_id: @programacion_realizada.telas_id } }
    end

    assert_redirected_to programacion_realizada_url(ProgramacioneRealizada.last)
  end

  test "should show programacion_realizada" do
    get programacion_realizada_url(@programacion_realizada)
    assert_response :success
  end

  test "should get edit" do
    get edit_programacion_realizada_url(@programacion_realizada)
    assert_response :success
  end

  test "should update programacion_realizada" do
    patch programacion_realizada_url(@programacion_realizada), params: { programacion_realizada: { cantidad: @programacion_realizada.cantidad, fecha: @programacion_realizada.fecha, pieza: @programacion_realizada.pieza, prenda: @programacion_realizada.prenda, programacion_id: @programacion_realizada.programacion_id, talla: @programacion_realizada.talla, telas_id: @programacion_realizada.telas_id } }
    assert_redirected_to programacion_realizada_url(@programacion_realizada)
  end

  test "should destroy programacion_realizada" do
    assert_difference('ProgramacioneRealizada.count', -1) do
      delete programacion_realizada_url(@programacion_realizada)
    end

    assert_redirected_to programaciones_realizada_url
  end
end
