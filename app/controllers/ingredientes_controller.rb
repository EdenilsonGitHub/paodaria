class IngredientesController < ApplicationController
    before_action :procurar_id, only: [:show, :edit, :update, :destroy]

     def index
        @ingredientes = Ingrediente.all
    end

    def show
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
