# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_27_203542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "table_empresas", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "telefone"
    t.string "email"
    t.boolean "ativo"
    t.string "sigla"
    t.string "razao_social"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "pais"
    t.string "estado"
    t.string "cidade"
    t.string "rua"
    t.string "numero"
    t.string "complemento"
    t.string "cep"
  end

  create_table "table_produtos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.date "data_validade"
    t.string "codigo_de_barras"
    t.integer "quantidade"
    t.date "data_fabricacao"
    t.float "preco"
  end

  create_table "table_usuarios", force: :cascade do |t|
    t.string "login"
    t.string "nome"
    t.string "email"
    t.string "senha"
    t.date "data_de_nascimento"
    t.boolean "admin"
    t.boolean "gerente"
    t.string "telefone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "senha_confirmation"
  end

end
