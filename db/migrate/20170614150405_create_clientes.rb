class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :tipo_documento
      t.string :documento
      t.string :telefono
      t.string :celular
      t.string :direccion
      t.string :ciudad
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
