class Ingrediente < ActiveRecord::Base
    self.table_name = 'ing'

    has_many :rel_prod_ing, class_name: 'Relproding', foreign_key: :ingrediente_id
    has_many :produtos, through: :rel_prod_ing

    validates :nome, presence: true
    validates :nome, uniqueness: true
    validates :observacao, length: { maximum: 50, message: 'é muito grande (máximo: 50 caracteres)' }
end