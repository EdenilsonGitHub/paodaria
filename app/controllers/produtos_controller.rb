class ProdutosController < ApplicationController

    def index
        @produtos = Produto.all
    end

    def new
        @produto = Produto.new
    end

    def create
        @produto = Produto.new(params.require(:produto).permit(:nome, :descricao, :data_validade, :codigo_de_barras, :quantidade, :data_fabricacao, :preco))
        if @produto.save
            redirect_to produtos_path
        else
            render action: 'new'
        end
    end

end