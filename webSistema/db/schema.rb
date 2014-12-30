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

ActiveRecord::Schema.define(version: 20141229014840) do

  create_table "artigos", force: true do |t|
    t.string   "titulo"
    t.text     "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.integer  "servico_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clientes", ["servico_id"], name: "index_clientes_on_servico_id"

  create_table "comentarios", force: true do |t|
    t.string   "comentario"
    t.string   "body"
    t.integer  "artigo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comentarios", ["artigo_id"], name: "index_comentarios_on_artigo_id"

  create_table "servicos", force: true do |t|
    t.string   "nome"
    t.string   "tempo_execucao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
