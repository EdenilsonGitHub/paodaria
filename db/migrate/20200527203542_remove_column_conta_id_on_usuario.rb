class RemoveColumnContaIdOnUsuario < ActiveRecord::Migration[6.0]
  def up
    remove_column :table_usuarios, :conta_id
  end

  def down
    add_column :table_usuarios, :conta_id, :integer
  end
end
