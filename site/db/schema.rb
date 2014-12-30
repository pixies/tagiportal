# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141229235658) do

  create_table "clientes", force: true do |t|
    t.string   "nome_cliente"
    t.string   "telefone_cliente"
    t.string   "email_cliente"
    t.integer  "id_usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["id_usuario_id"], name: "index_clientes_on_id_usuario_id"

  create_table "patentes", force: true do |t|
    t.string   "noma_patente"
    t.integer  "id_patente"
    t.integer  "id_usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patentes", ["id_usuario_id"], name: "index_patentes_on_id_usuario_id"

  create_table "usuarios", force: true do |t|
    t.string   "login_usuario"
    t.string   "senha_usuario"
    t.integer  "tipo_usuario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
