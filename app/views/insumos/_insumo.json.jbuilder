json.extract! insumo, :id, :nombre, :tipo_unidad, :cantidad, :valor_unit, :total, :created_at, :updated_at
json.url insumo_url(insumo, format: :json)
