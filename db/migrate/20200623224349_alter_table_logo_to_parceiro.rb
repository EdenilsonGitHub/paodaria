class AlterTableLogoToParceiro < ActiveRecord::Migration[6.0]
    def up
        add_attachment :parceiro, :logo_parc, :string
        remove_column :parceiro, :logo
    end

    def down
        remove_attachment :parceiro, :logo_parc
        add_column :parceiro, :logo, :string
    end
end