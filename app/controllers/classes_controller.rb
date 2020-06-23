class ClassesController < ApplicationController
    before_action :procurar_id, only: [:show, :edit, :update, :destroy]

    def new
        @classe = Classe.new
    end

    def create
        @classe = Classe.new(params.require(:classe).permit(:nome))
        if @classe.save
            redirect_to classes_path
        else
            render action: 'new'
        end
    end

    def edit
    end
    
    def update
        if @classe.update_attributes(params.require(:classe).permit(:nome))
            redirect_to classes_path
        else
            render 'edit'
        end                
    end

    private

    def procurar_id
        @classe = Classe.find_by_id(params[:id])
    end    

end