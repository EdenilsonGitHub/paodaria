class CreateTableParceiro < ActiveRecord::Migration[6.0]
  def change
    create_table   :table_parceiros do |t|
      t.string     :nome
      t.string     :cnpj
      t.string     :email
      t.string     :telefone
      t.string     :logo
      t.string     :servico_prestado
      t.timestamps   
    end
  end
end
