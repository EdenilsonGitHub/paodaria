class AddColumnUmId < ActiveRecord::Migration[6.0]
  def up
    add_column :prod, :unidade_medida_id, :integer
  end

  def down
    remove_column :prod, :unidade_medida_id
  end
end