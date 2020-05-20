class UsuariosController < ApplicationController
    def new
        @usuario = Usuario.new
    end

    def create
        @usuario = Usuario.new(params.require(:usuario).permit(:nome, :senha, :conta_id, :data_de_nascimento, :login, :email, :telefone, :admin, :gerente))
        if @usuario.save
            redirect_to usuarios_path
        else
            render action: 'new'
        end
    end

    def index
        @usuarios = Usuario.all
    end
end 