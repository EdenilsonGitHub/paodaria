class AddColumnLogoOnEmpresa < ActiveRecord::Migration[6.0]
  def up
    add_attachment :table_empresas, :logo
  end

  def down
    remove_attachment :table_empresas, :logo
  end
end
