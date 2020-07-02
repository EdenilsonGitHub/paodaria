class Classe < ActiveRecord::Base
    self.table_name = 'classe'

    validates :nome, presence: true
    validates :nome, uniqueness: true   

    has_many :produtos
end