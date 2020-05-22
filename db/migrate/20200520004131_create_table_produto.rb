class CreateTableProduto < ActiveRecord::Migration[6.0]
  def change
    create_table :table_produtos do |t|
      t.string   :nome
      t.string   :descricao
      t.datetime :data_validade
      t.string   :codigo_de_barras
      t.integer  :quantidade
      t.datetime :data_fabricacao
      t.float    :preco        
    end
  end
end