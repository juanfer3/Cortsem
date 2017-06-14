class CreatePerdidas < ActiveRecord::Migration[5.1]
  def change
    create_table :perdidas do |t|
      t.string :descripcion
      t.string :tipo_unidad
      t.float :cantidad
      t.float :val_unit
      t.float :total

      t.timestamps
    end
  end
end
