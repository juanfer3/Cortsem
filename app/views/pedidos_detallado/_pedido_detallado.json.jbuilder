json.extract! pedido_detallado, :id, :pedido_id, :prenda, :pieza, :talla, :tela_id, :cantidad, :val_unit, :total, :created_at, :updated_at
json.url pedido_detallado_url(pedido_detallado, format: :json)
