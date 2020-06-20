class AddColumnCriadoPorOnProd < ActiveRecord::Migration[6.0]
  def up
    add_column :prod, :criado_por, :string
  end

  def down
    remove_column :prod, :criado_por
  end
end