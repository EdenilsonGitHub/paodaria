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
    
    private

    def procurar_id
        @ingrediente = Ingrediente.find_by_id(params[:id])
    end
end
