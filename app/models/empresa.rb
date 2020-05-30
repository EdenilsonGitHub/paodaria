class Empresa < ActiveRecord::Base
    self.table_name = 'table_empresas'

    include Paperclip::Glue

    validates :nome, :cnpj, :email, :razao_social, :sigla, presence: true
    validates :email, :cnpj, :razao_social, :sigla, :nome, uniqueness: true    
    validates :cnpj, length: {is: 14}, allow_blank: false
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :cep, length: {is: 8}, allow_blank: false

    has_many :usuarios
    
    has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

end 