require 'test_helper'

class PedidosDetalladoControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido_detallado = pedidos_detallado(:one)
  end

  test "should get index" do
    get pedidos_detallado_url
    assert_response :success
  end

  test "should get new" do
    get new_pedido_detallado_url
    assert_response :success
  end

  test "should create pedido_detallado" do
    assert_difference('PedidoDetallado.count') do
      post pedidos_detallado_url, params: { pedido_detallado: { cantidad: @pedido_detallado.cantidad, pedido_id: @pedido_detallado.pedido_id, pieza: @pedido_detallado.pieza, prenda: @pedido_detallado.prenda, talla: @pedido_detallado.talla, tela_id: @pedido_detallado.tela_id, total: @pedido_detallado.total, val_unit: @pedido_detallado.val_unit } }
    end

    assert_redirected_to pedido_detallado_url(PedidoDetallado.last)
  end

  test "should show pedido_detallado" do
    get pedido_detallado_url(@pedido_detallado)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_detallado_url(@pedido_detallado)
    assert_response :success
  end

  test "should update pedido_detallado" do
    patch pedido_detallado_url(@pedido_detallado), params: { pedido_detallado: { cantidad: @pedido_detallado.cantidad, pedido_id: @pedido_detallado.pedido_id, pieza: @pedido_detallado.pieza, prenda: @pedido_detallado.prenda, talla: @pedido_detallado.talla, tela_id: @pedido_detallado.tela_id, total: @pedido_detallado.total, val_unit: @pedido_detallado.val_unit } }
    assert_redirected_to pedido_detallado_url(@pedido_detallado)
  end

  test "should destroy pedido_detallado" do
    assert_difference('PedidoDetallado.count', -1) do
      delete pedido_detallado_url(@pedido_detallado)
    end

    assert_redirected_to pedidos_detallado_url
  end
end
