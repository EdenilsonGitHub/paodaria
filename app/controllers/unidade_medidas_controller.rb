class UnidadeMedidasController < ApplicationController

    before_action :procurar_id, only: [:show, :edit, :update, :destroy]

    def index
        @unidade_medidas = UnidadeMedida.all
    end

    def show
    end

    def new
        @unidade_medida = UnidadeMedida.new
    end

    def create
        @unidade_medida = UnidadeMedida.new(params.require(:unidade_medida).permit(:nome))
        if @unidade_medida.save
            redirect_to unidade_medidas_path
        else
            render action: 'new'
        end
    end

    def edit
    end

    def update 
        if @unidade_medida.update_attributes(params.require(:unidade_medida).permit(:nome))
            redirect_to unidade_medidas_path
        else
            render 'edit'
        end            
    end

    def destroy
        @unidade_medida.destroy
        redirect_to unidade_medidas_path
    end

    private

    def procurar_id
        @unidade_medida = UnidadeMedida.find_by_id(params[:id])
    end    

end