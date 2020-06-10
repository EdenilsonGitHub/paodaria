class Ingrediente < ActiveRecord::Base
    self.table_name = 'ing'

    has_many :rel_prod_ing, class_name: 'Relproding', foreign_key: :ingrediente_id

    validates :nome, :alergicos, :observacao, presence: true
    validates :nome, uniqueness: true
    validates :observacao, length: { minimum: 10, message: 'é muito curto (mínimo: 10 caracteres)' }
end
