class RemoveColumnContaIdOnUsuario < ActiveRecord::Migration[6.0]
  def up
    remove_column :usr, :conta_id
  end

  def down
    add_column :usr, :conta_id, :integer
  end
end
