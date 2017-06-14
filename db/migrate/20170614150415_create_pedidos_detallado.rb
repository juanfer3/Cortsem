class CreatePedidosDetallado < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos_detallado do |t|
      t.references :pedido, foreign_key: true
      t.string :prenda
      t.string :pieza
      t.string :talla
      t.references :tela, foreign_key: true
      t.float :cantidad
      t.float :val_unit
      t.float :total

      t.timestamps
    end
  end
end
