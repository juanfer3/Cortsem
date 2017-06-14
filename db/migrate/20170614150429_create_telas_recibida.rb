class CreateTelasRecibida < ActiveRecord::Migration[5.1]
  def change
    create_table :telas_recibida do |t|
      t.string :descripcion
      t.string :tipo_unidad
      t.float :cantidad_recibida
      t.float :val_unit
      t.float :cantidad_devuelta
      t.float :total

      t.timestamps
    end
  end
end
