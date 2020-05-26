class CreateTableProduto < ActiveRecord::Migration[6.0]
  def change
    create_table :table_produtos do |t|
      t.string   :nome
      t.text     :descricao
      t.date     :data_validade
      t.string   :codigo_de_barras
      t.integer  :quantidade
      t.date     :data_fabricacao
      t.float    :preco   
      t.timestamps   
    end
  end
end