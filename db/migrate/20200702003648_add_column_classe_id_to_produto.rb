class AddColumnClasseIdToProduto < ActiveRecord::Migration[6.0]  
  def up
    add_column :prod, :classe_id, :integer
  end

  def down
    remove_column :prod, :classe_id
  end
end