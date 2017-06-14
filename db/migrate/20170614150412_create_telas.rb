class CreateTelas < ActiveRecord::Migration[5.1]
  def change
    create_table :telas do |t|
      t.string :tipo_tela

      t.timestamps
    end
  end
end
