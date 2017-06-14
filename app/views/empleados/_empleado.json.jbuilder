json.extract! empleado, :id, :nombre, :tipo_documento, :documento, :rol, :telefono, :celular, :direccion, :ciudad, :user_id, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
