class AlterTableProdutoStarsPromoVlPromo < ActiveRecord::Migration[6.0]
  def up
    add_column :prod, :estrela, :integer
    add_column :prod, :promocao, :boolean
    add_column :prod, :valor_promocao, :float
  end

  def down
    remove_column :prod, :estrela
    remove_column :prod, :promocao
    remove_column :prod, :valor_promocao
  end
end
