class CreateTableUnidadeMedida < ActiveRecord::Migration[6.0]
  def change
    create_table :unidade_medida do |t|
        t.string :nome
        t.timestamps   
    end
  end
end
