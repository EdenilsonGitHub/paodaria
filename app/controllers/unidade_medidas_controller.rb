class UnidadeMedidasController < ApplicationController

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

end