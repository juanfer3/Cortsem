json.extract! tela_recibida, :id, :descripcion, :tipo_unidad, :cantidad_recibida, :val_unit, :cantidad_devuelta, :total, :created_at, :updated_at
json.url tela_recibida_url(tela_recibida, format: :json)
