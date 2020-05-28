class AddColumnFotoOnProduto < ActiveRecord::Migration[6.0]
  def up
    add_attachment :table_produtos, :foto
  end

  def down
    remove_attachment :table_produtos, :foto
  end
end
