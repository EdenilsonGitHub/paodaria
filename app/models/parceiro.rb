class Parceiro < ActiveRecord::Base
    self.table_name = 'parceiro'

    
    validates :nome, :email, :servico_prestado, presence: true
    validates :nome, :cnpj, :email, uniqueness: true
    validates :servico_prestado, length: { minimum: 5, message: 'é muito curto (mínimo: 5 caracteres)' }
    validates :nome, length: { maximum: 50, message: 'é muito grande (máximo: 50 caracteres)' }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :cnpj, length: { maximum: 18, message: 'é muito grande (máximo: 18 caracteres)' }
    
    include Paperclip::Glue

    has_attached_file :logo_parc, styles: { normal: "300x300>" }
    validates_attachment_content_type :logo_parc, content_type: /\Aimage\/.*\z/
end