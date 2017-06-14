class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.date :f_registro
      t.date :f_entrega
      t.references :cliente, foreign_key: true
      t.references :empleado, foreign_key: true

      t.timestamps
    end
  end
end
