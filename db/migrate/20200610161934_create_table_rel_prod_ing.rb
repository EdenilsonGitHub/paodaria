class CreateTableRelProdIng < ActiveRecord::Migration[6.0]
  def change
    create_table :rel_prod_ing do |t|
      t.integer :produto_id
      t.integer :ingrediente_id
      t.timestamps
    end
  end
end