# encoding: UTF-8
# require 'digest'
class Usuario < ActiveRecord::Base
    self.table_name = 'table_usuarios'
    
    before_save :criptografa_senha

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