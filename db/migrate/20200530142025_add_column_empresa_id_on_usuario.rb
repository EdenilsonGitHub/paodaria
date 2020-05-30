class AddColumnEmpresaIdOnUsuario < ActiveRecord::Migration[6.0]
  def up
    add_column :table_usuarios, :empresa_id, :integer
  end

  def down
    remove_column :table_usuarios, :empresa_id
  end
end
