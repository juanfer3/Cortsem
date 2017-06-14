json.extract! pedido, :id, :f_registro, :f_entrega, :cliente_id, :empleado_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
