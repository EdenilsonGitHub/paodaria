class Classe < ActiveRecord::Base
    self.table_name = 'classe'

    validates :nome, presence: true
    validates :nome, uniqueness: true    
end