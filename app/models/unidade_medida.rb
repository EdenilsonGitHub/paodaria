# encoding: UTF-8
# require 'digest'
class UnidadeMedida < ActiveRecord::Base
    self.table_name = 'um'

    validates :nome, presence: true
    validates :nome, uniqueness: true
    validates :nome, length: { maximum: 10, message: 'é muito longo (máximo: 10 caracteres)' }

    has_many :produtos

end