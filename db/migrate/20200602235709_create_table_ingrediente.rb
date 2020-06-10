class CreateTableIngrediente < ActiveRecord::Migration[6.0]
  def change
    create_table :ing do |t|
      t.string  :nome
      t.boolean :alergicos
      t.string  :observacao     
      t.timestamps   
    end
  end
end
