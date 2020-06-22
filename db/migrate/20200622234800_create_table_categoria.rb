class CreateTableCategoria < ActiveRecord::Migration[6.0]
  def change
    create_table :cat do |t|
      t.string  :nome    
      t.timestamps   
    end
  end
end
