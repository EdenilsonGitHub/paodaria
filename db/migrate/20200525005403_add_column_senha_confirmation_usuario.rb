class AddColumnSenhaConfirmationUsuario < ActiveRecord::Migration[6.0]
  def change
    add_column :table_usuarios, :senha_confirmation, :string
  end
end