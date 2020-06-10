class AddColumnEmpresaIdOnUsuario < ActiveRecord::Migration[6.0]
  def up
    add_column :usr, :empresa_id, :integer
  end

  def down
    remove_column :usr, :empresa_id
  end
end
