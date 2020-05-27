class EmpresasController < ApplicationController
    def new
        @empresa = Empresa.new
    end

    def create
        @empresa = Empresa.new(params.require(:empresa).permit(:nome, :cnpj, :telefone, :email, :ativo, :sigla, :razao_social))
        if @empresa.save
            redirect_to empresas_path            
        else
            render action: 'new'
        end
    end
end