class AddColumnValorUnidadeMedidaOnProd < ActiveRecord::Migration[6.0]
  def up
    add_column :prod, :valor_unidade_medida, :float
  end

  def down
    remove_column :prod, :valor_unidade_medida
  end
end
