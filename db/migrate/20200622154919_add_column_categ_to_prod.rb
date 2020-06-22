class AddColumnCategToProd < ActiveRecord::Migration[6.0]
  def up
    add_column :prod, :categoria_id, :integer
  end

  def down
    remove_column :prod, :categoria_id
  end
end
