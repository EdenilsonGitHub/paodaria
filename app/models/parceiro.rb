class Parceiro < ActiveRecord::Base
    self.table_name = 'parceiro'
    
    validates :nome, :cnpj, :email, :servico_prestado, presence: true
    validates :nome, :cnpj, :email, uniqueness: true
    validates :servico_prestado, length: { minimum: 5, message: 'é muito curto (mínimo: 5 caracteres)' }
    validates :nome, length: { maximum: 50, message: 'é muito grande (máximo: 50 caracteres)' }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :cnpj, length: {is: 14}, allow_blank: false
end