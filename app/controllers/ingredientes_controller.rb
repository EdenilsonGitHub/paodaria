class IngredientesController < ApplicationController

    def index
        @ingredientes = Ingrediente.all
    end

    def new
        @ingrediente = Ingrediente.new
    end

    def create
        @ingrediente = Ingrediente.new(params.require(:ingrediente).permit(:nome, :alergicos, :observacao))
        if @ingrediente.save
            redirect_to ingredientes_path
        else
            render action: 'new'
        end
    end
end
