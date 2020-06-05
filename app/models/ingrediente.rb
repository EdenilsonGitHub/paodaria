class Ingrediente < ActiveRecord::Base
    self.table_name = 'table_ingredientes'
    
    validates :nome, :alergicos, :observacao, presence: true
    validates :nome, uniqueness: true
    validates :observacao, length: { minimum: 10, message: 'é muito curto (mínimo: 10 caracteres)' }
end