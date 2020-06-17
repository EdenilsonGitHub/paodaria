class ProdutosController < ApplicationController

    before_action :procurar_id_prod,      only: [:show, :edit, :update, :destroy]
    before_action :carregar_ingredientes, only: [:show]

    def index
        @produtos = Produto.all
    end

    def show
    end

    def new
        @produto = Produto.new
    end

    def create
        @produto = Produto.new(params.require(:produto).permit(:nome, :descricao, :data_validade, :codigo_de_barras, :quantidade, :data_fabricacao, :preco, :estrela, :promocao, :valor_promocao, :foto))
        if @produto.save
            redirect_to produtos_path
        else
            render action: 'new'
        end
    end

    def edit
    end

    def update
        if @produto.update_attributes(params.require(:produto).permit(:nome, :descricao, :data_validade, :codigo_de_barras, :quantidade, :data_fabricacao, :preco, :estrela, :promocao, :valor_promocao, :foto))
            redirect_to produtos_path
        else
            render 'edit'
        end
    end

    def destroy
        @produto.destroy
        redirect_to produtos_path
    end

    def loja
        @produtos = Produto.all
    end

    private

    def procurar_id_prod
        @produto = Produto.find_by_id(params[:id])
    end

    def carregar_ingredientes
        @ingredientes = Ingrediente.all
    end

end