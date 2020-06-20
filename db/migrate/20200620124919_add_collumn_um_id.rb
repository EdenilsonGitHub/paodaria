class AddCollumnUmId < ActiveRecord::Migration[6.0]
  def up
    add_column :prod, :um_id, :integer
  end

  def down
    remove_column :prod, :um_id
  end
end