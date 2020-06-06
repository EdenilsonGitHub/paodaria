class IngredientesController < ApplicationController

    def index
        @ingredientes = Ingrediente.all
    end

    def new
        @ingrediente = Ingrediente.new
    end

    def edit
    end

    def update
        if @ingrediente.update_attributes(params.require(:ingrediente).permit(:nome, :observacao, :alergicos))
            redirect_to ingredientes_path
        else
            render 'edit'
        end    
    end

    def create
        @ingrediente = Ingrediente.new(params.require(:ingrediente).permit(:nome, :alergicos, :observacao))
        if @ingrediente.save
            redirect_to ingredientes_path
        else
            render action: 'new'
        end
    end

    def destroy
        @ingrediente.destroy
        redirect_to ingredientes_path
    end    
end
