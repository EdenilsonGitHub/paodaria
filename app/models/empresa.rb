class Empresa < ActiveRecord::Base
    self.table_name = 'emp'

    include Paperclip::Glue

    validates :nome, :cnpj, :email, :razao_social, :sigla, presence: true
    validates :email, :cnpj, :razao_social, :sigla, :nome, uniqueness: true    
    # validates :cnpj, length: {is: 14}, allow_blank: false
    validates :cnpj, length: { minimum: 14, message: 'é muito curto (mínimo: 14 caracteres)' }
    validates :cnpj, length: { maximum: 18, message: 'é muito longo (máximo: 18 caracteres)' }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :cep, length: { minimum: 8, message: 'é muito curto (mínimo: 8 caracteres)' }
    validates :cep, length: { maximum: 9, message: 'é muito longo (máximo: 9 caracteres)' }

    has_many :usuarios
    
    has_attached_file :logo, styles: { normal: "300x300>" }
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

end 