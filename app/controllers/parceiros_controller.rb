class ParceirosController < ApplicationController
    before_action :procurar_id, only: [:show, :edit, :update, :destroy]
    
    def index
        @parceiros = Parceiro.all 
    end    
    
    def show
    end

    def new
        @parceiro = Parceiro.new
    end

    def create
        @parceiro = Parceiro.new(params.require(:parceiro).permit(:nome, :servico_prestado, :logo, :cnpj, :email, :telefone))
        if @parceiro.save
            redirect_to parceiros_path
        else
            render action: 'new'
        end
    end

    def update 
        if @parceiro.update_attributes(params.require(:parceiro).permit(:nome, :servico_prestado, :logo, :cnpj, :email, :telefone))
            redirect_to parceiros_path
        else
            render 'edit'
        end            
    end
    

    def destroy
        @parceiro.destroy
        redirect_to parceiros_path
    end    

    private

    def procurar_id
        @parceiro = Parceiro.find_by_id(params[:id])
    end    
end