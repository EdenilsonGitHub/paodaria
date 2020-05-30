class EmpresasController < ApplicationController
    before_action :procurar_id, only: [:show, :edit, :update, :destroy]

    def index
        @empresas = Empresa.all 
    end
    
    def new
        @empresa = Empresa.new
    end

    def create
        @empresa = Empresa.new(params.require(:empresa).permit(:nome, :cnpj, :telefone, :email, :ativo, :sigla, :razao_social, :logo))
        if @empresa.save
            redirect_to empresas_path            
        else
            render action: 'new'
        end
    end

    private

    def procurar_id
        @empresa = Empresa.find_by_id(params[:id])
    end

end