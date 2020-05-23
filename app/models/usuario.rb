# encoding: UTF-8
# require 'digest'
class Usuario < ActiveRecord::Base
    self.table_name = 'table_usuarios'

    def validou(senha)
        # senha = Digest::SHA256.hexdigest senha
        if self.senha == senha
            return true
        end
    end
end 