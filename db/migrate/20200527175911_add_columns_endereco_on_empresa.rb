class AddColumnsEnderecoOnEmpresa < ActiveRecord::Migration[6.0]
  def up
    add_column :table_empresas, :pais, :string
    add_column :table_empresas, :estado, :string
    add_column :table_empresas, :cidade, :string
    add_column :table_empresas, :rua, :string
    add_column :table_empresas, :numero, :string
    add_column :table_empresas, :complemento, :string
    add_column :table_empresas, :cep, :string
  end

  def down
    remove_column :table_empresas, :pais
    remove_column :table_empresas, :estado
    remove_column :table_empresas, :cidade
    remove_column :table_empresas, :rua
    remove_column :table_empresas, :numero
    remove_column :table_empresas, :complemento
    remove_column :table_empresas, :cep
  end
end
