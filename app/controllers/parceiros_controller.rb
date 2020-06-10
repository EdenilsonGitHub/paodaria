class ParceirosController < ApplicationController
    before_action :procurar_id, only: [:show, :edit, :update]
    
    def index
        @parceiros = Parceiro.all 
    end    
    
    def new
        @parceiro = Parceiro.new
    end

    def create
        @parceiro = Parceiro.new(params.require(:parceiro).permit(:nome, :cnpj, :email, :telefone, :logo, :servico_prestado))
        if @parceiro.save
            redirect_to parceiros_path
        else
            render action: 'new'
        end
    end
    
    def show
    end

    private

    def procurar_id
        @parceiro = Parceiro.find_by_id(params[:id])
    end    
end