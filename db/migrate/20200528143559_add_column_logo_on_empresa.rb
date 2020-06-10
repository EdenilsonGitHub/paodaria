class AddColumnLogoOnEmpresa < ActiveRecord::Migration[6.0]
  def up
    add_attachment :emp, :logo
  end

  def down
    remove_attachment :emp, :logo
  end
end
