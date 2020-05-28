class ProdutosController < ApplicationController

    before_action :procurar_id, only: [:show, :edit, :update, :destroy]

    def index
        @produtos = Produto.all
    end

    def show
    end

    def new
        @produto = Produto.new
    end

    def create
        @produto = Produto.new(params.require(:produto).permit(:nome, :descricao, :data_validade, :codigo_de_barras, :quantidade, :data_fabricacao, :preco, :foto))
        if @produto.save
            redirect_to produtos_path
        else
            render action: 'new'
        end
    end

    def edit
    end

    def update
        if @produto.update_attributes(params.require(:produto).permit(:nome, :descricao, :data_validade, :codigo_de_barras, :quantidade, :data_fabricacao, :preco, :foto))
            redirect_to produtos_path
        else
            render 'edit'
        end
    end

    def destroy
        @produto.destroy
        redirect_to produtos_path
    end

    private

    def procurar_id
        @produto = Produto.find_by_id(params[:id])
    end

end