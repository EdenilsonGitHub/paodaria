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

ActiveRecord::Schema.define(version: 2020_06_23_224654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "classe", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emp", force: :cascade do |t|
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
    t.string "logo_file_name"
    t.string "logo_content_type"
    t.integer "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "ing", force: :cascade do |t|
    t.string "nome"
    t.boolean "alergicos"
    t.string "observacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parceiro", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "email"
    t.string "telefone"
    t.string "servico_prestado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "logo_parc_file_name"
    t.string "logo_parc_content_type"
    t.integer "logo_parc_file_size"
    t.datetime "logo_parc_updated_at"
    t.string "string_file_name"
    t.string "string_content_type"
    t.integer "string_file_size"
    t.datetime "string_updated_at"
  end

  create_table "prod", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.date "data_validade"
    t.string "codigo_de_barras"
    t.integer "quantidade"
    t.date "data_fabricacao"
    t.float "preco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "foto_file_name"
    t.string "foto_content_type"
    t.integer "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer "estrela"
    t.boolean "promocao"
    t.float "valor_promocao"
    t.integer "unidade_medida_id"
    t.float "valor_unidade_medida"
    t.string "criado_por"
    t.integer "categoria_id"
  end

  create_table "rel_prod_ing", force: :cascade do |t|
    t.integer "produto_id"
    t.integer "ingrediente_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "unidade_medida", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usr", force: :cascade do |t|
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
    t.integer "empresa_id"
  end

end
