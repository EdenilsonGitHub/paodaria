class UsuariosController < ApplicationController

    before_action :procurar_id, only: [:show, :edit, :update, :destroy]
    
    def index
        @usuarios = Usuario.all
    end

    def show
    end
    
    def new
        @usuario = Usuario.new
    end

    def create
        @usuario = Usuario.new(params.require(:usuario).permit(:nome, :senha, :senha_confirmation, :conta_id, :data_de_nascimento, :login, :email, :telefone, :admin, :gerente, :empresa_id))
        respond_to do |format|
            if @usuario.save
                UsuarioMailer.with(usuario: @usuario).welcome_email.deliver_now
                format.html { redirect_to login_path }
                format.json { render json: @usuario, status: :created, location: @usuario }
            else
                format.html { render action: 'new' }
                format.json { render json: @usuario.errors, status: :unprocessable_entity }
            end
        end
    end

    def edit
    end

    def update
        if @usuario.update_attributes(params.require(:usuario).permit(:nome, :senha, :senha_confirmation, :conta_id, :data_de_nascimento, :login, :email, 
                                      :telefone, :admin, :gerente, :empresa_id))
            redirect_to usuarios_path
        else
            render 'edit'
        end
    end

    def destroy
        @usuario.destroy
        redirect_to usuarios_path
    end

    def logar
        user = Usuario.find_by_login(params[:login])
        if user && user.validou(params[:senha])
            if params[:conectado]
                cookies.permanent[:id] = user.id.to_s
            else
                cookies[:id] = user.id.to_s
            end
            redirect_to home_index_path
        else
            render 'login'
        end 
    end

    def login
        redirect_to home_index_path if cookies[:id] != nil
    end

    private

    def procurar_id
        @usuario = Usuario.find_by_id(params[:id])
    end
end 