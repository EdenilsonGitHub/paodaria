class CreateTableCategorias < ActiveRecord::Migration[6.0]
  def change
    create_table :categ do |t|
      t.string :nome
      t.timestamps
    end
  end
end
