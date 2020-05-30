class EmpresasController < ApplicationController
    before_action :procurar_id, only: [:show, :edit, :update, :destroy]

    def index
        @empresas = Empresa.all 
    end
    
    def new
        @empresa = Empresa.new
    end
    
    def create
        @empresa = Empresa.new(params.require(:empresa).permit(:nome, :cnpj, :telefone, :email, :ativo, :sigla, :razao_social, :logo, :pais, :estado,
                    :cidade, :rua, :numero, :complemento, :cep))
        if @empresa.save
            redirect_to empresas_path            
        else
            render action: 'new'
        end
    end
    
    def edit
    end

    def update
        if @empresa.update_attributes(params.require(:empresa).permit(:nome, :cnpj, :telefone, :email, :ativo, :sigla, :razao_social, :logo, :pais, :estado,
            :cidade, :rua, :numero, :complemento, :cep))
            redirect_to empresas_path
        else
            render 'edit'
        end
    end  
    
    def destroy
        @empresa.destroy
        redirect_to empresas_path
    end

    private

    def procurar_id
        @empresa = Empresa.find_by_id(params[:id])
    end

end