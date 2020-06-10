class CreateTableEmpresa < ActiveRecord::Migration[6.0]
  def change
    create_table :emp do |t|
      t.string  :nome
      t.string  :cnpj
      t.string  :telefone
      t.string  :email
      t.boolean :ativo
      t.string  :sigla
      t.string  :razao_social
      t.timestamps
    end
  end
end
