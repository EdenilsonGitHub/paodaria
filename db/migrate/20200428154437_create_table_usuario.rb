class CreateTableUsuario < ActiveRecord::Migration[6.0]
  def change
    create_table :table_usuarios do |t|
      t.string   :login
      t.string   :nome
      t.string   :email
      t.string   :senha
      t.datetime :data_de_nascimento
      t.boolean  :admin
      t.boolean  :gerente
      t.string   :telefone
      t.integer  :conta_id
      t.timestamps
    end
  end
end
