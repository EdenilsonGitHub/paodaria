class Relproding < ActiveRecord::Base
    self.table_name = 'rel_prod_ing'
    
    belongs_to :prod, class_name: 'Produto', foreign_key: :produto_id
    belongs_to :ing, class_name: 'Ingrediente', foreign_key: :ingrediente_id
end