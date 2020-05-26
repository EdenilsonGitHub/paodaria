class Produto < ActiveRecord::Base
    self.table_name = 'table_produtos'

    validates :nome, :descricao, :codigo_de_barras, :quantidade, :preco, presence: true
    validates :codigo_de_barras, :nome, uniqueness: true
    validates :codigo_de_barras, length: { minimum: 12, message: 'é muito curto (mínimo: 12 caracteres)' }
    validates :codigo_de_barras, length: { maximum: 13, message: 'é muito longo (máximo: 13 caracteres)' }
    validates :nome, length: { maximum: 55, message: 'é muito longo (máximo: 55 caracteres)' }
end 