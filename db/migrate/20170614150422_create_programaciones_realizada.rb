class CreateProgramacionesRealizada < ActiveRecord::Migration[5.1]
  def change
    create_table :programaciones_realizada do |t|
      t.references :programacion, foreign_key: true
      t.string :fecha
      t.string :prenda
      t.string :pieza
      t.string :talla
      t.references :telas, foreign_key: true
      t.float :cantidad

      t.timestamps
    end
  end
end
