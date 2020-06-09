class AlterTableProdutoStarsPromoVlPromo < ActiveRecord::Migration[6.0]
  def up
    add_column :table_produtos, :estrela, :integer
    add_column :table_produtos, :promocao, :boolean
    add_column :table_produtos, :valor_promocao, :float
  end

  def down
    remove_column :table_produtos, :estrela
    remove_column :table_produtos, :promocao
    remove_column :table_produtos, :valor_promocao
  end
end
