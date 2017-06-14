require 'test_helper'

class EmpleadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empleado = empleados(:one)
  end

  test "should get index" do
    get empleados_url
    assert_response :success
  end

  test "should get new" do
    get new_empleado_url
    assert_response :success
  end

  test "should create empleado" do
    assert_difference('Empleado.count') do
      post empleados_url, params: { empleado: { celular: @empleado.celular, ciudad: @empleado.ciudad, direccion: @empleado.direccion, documento: @empleado.documento, nombre: @empleado.nombre, rol: @empleado.rol, telefono: @empleado.telefono, tipo_documento: @empleado.tipo_documento, user_id: @empleado.user_id } }
    end

    assert_redirected_to empleado_url(Empleado.last)
  end

  test "should show empleado" do
    get empleado_url(@empleado)
    assert_response :success
  end

  test "should get edit" do
    get edit_empleado_url(@empleado)
    assert_response :success
  end

  test "should update empleado" do
    patch empleado_url(@empleado), params: { empleado: { celular: @empleado.celular, ciudad: @empleado.ciudad, direccion: @empleado.direccion, documento: @empleado.documento, nombre: @empleado.nombre, rol: @empleado.rol, telefono: @empleado.telefono, tipo_documento: @empleado.tipo_documento, user_id: @empleado.user_id } }
    assert_redirected_to empleado_url(@empleado)
  end

  test "should destroy empleado" do
    assert_difference('Empleado.count', -1) do
      delete empleado_url(@empleado)
    end

    assert_redirected_to empleados_url
  end
end
