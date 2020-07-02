class AddColumnSistemaToEmpresa < ActiveRecord::Migration[6.0]
  def up
    add_column :emp, :sistema, :string
  end

  def down
    remove_column :emp, :sistema
  end
end