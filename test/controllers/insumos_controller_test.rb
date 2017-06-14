require 'test_helper'

class InsumosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insumo = insumos(:one)
  end

  test "should get index" do
    get insumos_url
    assert_response :success
  end

  test "should get new" do
    get new_insumo_url
    assert_response :success
  end

  test "should create insumo" do
    assert_difference('Insumo.count') do
      post insumos_url, params: { insumo: { cantidad: @insumo.cantidad, nombre: @insumo.nombre, tipo_unidad: @insumo.tipo_unidad, total: @insumo.total, valor_unit: @insumo.valor_unit } }
    end

    assert_redirected_to insumo_url(Insumo.last)
  end

  test "should show insumo" do
    get insumo_url(@insumo)
    assert_response :success
  end

  test "should get edit" do
    get edit_insumo_url(@insumo)
    assert_response :success
  end

  test "should update insumo" do
    patch insumo_url(@insumo), params: { insumo: { cantidad: @insumo.cantidad, nombre: @insumo.nombre, tipo_unidad: @insumo.tipo_unidad, total: @insumo.total, valor_unit: @insumo.valor_unit } }
    assert_redirected_to insumo_url(@insumo)
  end

  test "should destroy insumo" do
    assert_difference('Insumo.count', -1) do
      delete insumo_url(@insumo)
    end

    assert_redirected_to insumos_url
  end
end
