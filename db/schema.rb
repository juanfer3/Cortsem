# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170614150432) do

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo_documento"
    t.string "documento"
    t.string "telefono"
    t.string "celular"
    t.string "direccion"
    t.string "ciudad"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clientes_on_user_id"
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo_documento"
    t.string "documento"
    t.string "rol"
    t.string "telefono"
    t.string "celular"
    t.string "direccion"
    t.string "ciudad"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_empleados_on_user_id"
  end

  create_table "insumos", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo_unidad"
    t.float "cantidad"
    t.float "valor_unit"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.date "f_registro"
    t.date "f_entrega"
    t.integer "cliente_id"
    t.integer "empleado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
    t.index ["empleado_id"], name: "index_pedidos_on_empleado_id"
  end

  create_table "pedidos_detallado", force: :cascade do |t|
    t.integer "pedido_id"
    t.string "prenda"
    t.string "pieza"
    t.string "talla"
    t.integer "tela_id"
    t.float "cantidad"
    t.float "val_unit"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_pedidos_detallado_on_pedido_id"
    t.index ["tela_id"], name: "index_pedidos_detallado_on_tela_id"
  end

  create_table "perdidas", force: :cascade do |t|
    t.string "descripcion"
    t.string "tipo_unidad"
    t.float "cantidad"
    t.float "val_unit"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programaciones", force: :cascade do |t|
    t.integer "pedido_id"
    t.string "f_entrega"
    t.string "prenda"
    t.string "pieza"
    t.string "talla"
    t.integer "telas_id"
    t.float "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_programaciones_on_pedido_id"
    t.index ["telas_id"], name: "index_programaciones_on_telas_id"
  end

  create_table "programaciones_realizada", force: :cascade do |t|
    t.integer "programacion_id"
    t.string "fecha"
    t.string "prenda"
    t.string "pieza"
    t.string "talla"
    t.integer "telas_id"
    t.float "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["programacion_id"], name: "index_programaciones_realizada_on_programacion_id"
    t.index ["telas_id"], name: "index_programaciones_realizada_on_telas_id"
  end

  create_table "telas", force: :cascade do |t|
    t.string "tipo_tela"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telas_recibida", force: :cascade do |t|
    t.string "descripcion"
    t.string "tipo_unidad"
    t.float "cantidad_recibida"
    t.float "val_unit"
    t.float "cantidad_devuelta"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
