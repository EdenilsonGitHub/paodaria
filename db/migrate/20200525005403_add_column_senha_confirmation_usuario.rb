class AddColumnSenhaConfirmationUsuario < ActiveRecord::Migration[6.0]
  def change
    add_column :usr, :senha_confirmation, :string
  end
end