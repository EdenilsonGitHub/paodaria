class CreateClasse < ActiveRecord::Migration[6.0]
  def change
    create_table :classe do |t|
      t.string :nome
      t.timestamps
    end
  end
end