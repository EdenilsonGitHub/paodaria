class Ingrediente < ActiveRecord::Base
    self.table_name = 'table_parceiros'
    
    validates :nome, :cnpj, :email, :servico_prestado, presence: true
    validates :nome, :cnpj, :email, uniqueness: true
    validates :servico_prestado, length: { minimum: 10, message: 'é muito curto (mínimo: 10 caracteres)' }
    validates :nome, length: { minimum: 10, message: 'é muito curto (mínimo: 10 caracteres)' }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :cnpj, length: {is: 14}, allow_blank: false
end