class CreateProgramaciones < ActiveRecord::Migration[5.1]
  def change
    create_table :programaciones do |t|
      t.references :pedido, foreign_key: true
      t.string :f_entrega
      t.string :prenda
      t.string :pieza
      t.string :talla
      t.references :telas, foreign_key: true
      t.float :cantidad

      t.timestamps
    end
  end
end
