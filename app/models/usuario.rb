# encoding: UTF-8
# require 'digest'
class Usuario < ActiveRecord::Base
    self.table_name = 'table_usuarios'

    before_save :criptografa_senha

    validates :nome, :login, :email, :senha, :senha_confirmation, presence: true
    validates :email, :login, uniqueness: true
    validates :senha, :senha_confirmation, length: { minimum: 6 }
    validates :senha, confirmation: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :nome, length: { maximum: 45 }
    validates :login, length: { maximum: 30 }

    def validou(senha)
        senha = Digest::SHA256.hexdigest senha
        if self.senha == senha
            return true
        end
    end

    private

    def criptografa_senha
        self.senha = Digest::SHA256.hexdigest self.senha
    end
end