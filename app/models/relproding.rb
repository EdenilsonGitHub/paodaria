class Relproding < ActiveRecord::Base
    self.table_name = 'table_rel_prod_ing'
    
    belongs_to :table_produtos, class_name: 'Produto', foreign_key: :produto_id
    belongs_to :table_ingrediente, class_name: 'Ingrediente', foreign_key: :ingrediente_id
end