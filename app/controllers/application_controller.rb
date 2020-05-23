# encoding: UTF-8
class ApplicationController < ActionController::Base
    before_action :usuario_logado, :logado, except: [:login, :logar]

    def usuario_logado
        @usuario_logado = Usuario.find_by_id(cookies[:id])
        @usuarios = Usuario.all
    end

    def logado
        if @usuario_logado == nil
            redirect_to root_path
        end
    end

    def sair
        cookies.delete :id
        redirect_to login_path
    end
end
