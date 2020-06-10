class AddColumnsEnderecoOnEmpresa < ActiveRecord::Migration[6.0]
  def up
    add_column :emp, :pais, :string
    add_column :emp, :estado, :string
    add_column :emp, :cidade, :string
    add_column :emp, :rua, :string
    add_column :emp, :numero, :string
    add_column :emp, :complemento, :string
    add_column :emp, :cep, :string
  end

  def down
    remove_column :emp, :pais
    remove_column :emp, :estado
    remove_column :emp, :cidade
    remove_column :emp, :rua
    remove_column :emp, :numero
    remove_column :emp, :complemento
    remove_column :emp, :cep
  end
end
