class AddColumnFotoOnProduto < ActiveRecord::Migration[6.0]
  def up
    add_attachment :prod, :foto
  end

  def down
    remove_attachment :prod, :foto
  end
end
