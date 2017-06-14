json.extract! cliente, :id, :nombre, :tipo_documento, :documento, :telefono, :celular, :direccion, :ciudad, :user_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
