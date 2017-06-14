class CreateInsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :insumos do |t|
      t.string :nombre
      t.string :tipo_unidad
      t.float :cantidad
      t.float :valor_unit
      t.float :total

      t.timestamps
    end
  end
end
