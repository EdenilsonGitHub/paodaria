class ProdutosController < ApplicationController

    before_action :procurar_id_prod,      only: [:show, :edit, :update, :destroy]
    before_action :carregar_ingredientes, only: [:show]
    before_action :carregar_produtos,     only: [:logs, :index, :loja]

    def index
    end

    def show
        @all_rel = Relproding.where(produto_id: @produto.id)
        @id_ingredientes = []
        @all_rel.each do |all|
            @id_ingredientes << all.ingrediente_id
        end
        @ingredientes_produto = []
        @id_ingredientes.each do |ing|
            @ingredientes_produto << Ingrediente.where(id: ing)
        end
        @ingredientes = Ingrediente.where.not(id: @id_ingredientes)
    end

    def new
        @produto = Produto.new
    end

    def create
        @produto = Produto.new(params.require(:produto).permit(:nome, :descricao, :data_validade, :codigo_de_barras, :quantidade, :data_fabricacao, :preco, :estrela, :promocao, :valor_promocao, :foto, :unidade_medida_id, :valor_unidade_medida, :criado_por))
        if @produto.save
            redirect_to produtos_path
        else
            render action: 'new'
        end
    end

    def edit
    end

    def update
        if @produto.update_attributes(params.require(:produto).permit(:nome, :descricao, :data_validade, :codigo_de_barras, :quantidade, :data_fabricacao, :preco, :estrela, :promocao, :valor_promocao, :foto, :unidade_medida_id, :valor_unidade_medida))
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
    end

    def logs
    end

    def ordenar_por_nome
        @produtos = Produto.order(:nome)
        respond_to do |format|
            format.js
        end
    end

    def ordenar_por_preco_maior
        @produtos = Produto.order(:preco).reverse
        respond_to do |format|
            format.js
        end
    end

    def ordenar_por_preco_menor
        @produtos = Produto.order(:preco)
        respond_to do |format|
            format.js
        end
    end

    def ordenar_por_promocao
        @produtos = Produto.where(promocao: true)
        respond_to do |format|
            format.js
        end
    end

    def adicionar_ingrediente
        criar_relacao
        respond_to do |format|
            format.js   {}
        end
    end

    def excluir_ingrediente
        Relproding.where(produto_id: params[:format], ingrediente_id: params[:id]).delete_all
        @all_rel = Relproding.where(produto_id: params[:format])
        @id_ingredientes = []
        @all_rel.each do |all|
            @id_ingredientes << all.ingrediente_id
        end
        @ingredientes_produto = []
        @id_ingredientes.each do |ing|
            @ingredientes_produto << Ingrediente.where(id: ing)
        end
        @ingredientes = Ingrediente.where.not(id: @id_ingredientes)
    end

    def criar_relacao
        rel_prod_ing = Relproding.new
        rel_prod_ing.ingrediente_id = params[:Ingrediente]
        rel_prod_ing.produto_id = params[:produto]
        rel_prod_ing.save
        buscar_ingredientes_associados()
    end

    def buscar_ingredientes_associados
        @all_rel = Relproding.where(produto_id: params[:produto])
        @id_ingredientes = []
        @all_rel.each do |all|
            @id_ingredientes << all.ingrediente_id
        end
        @ingredientes_produto = []
        @id_ingredientes.each do |ing|
            @ingredientes_produto << Ingrediente.where(id: ing)
        end
        @ingredientes = Ingrediente.where.not(id: @id_ingredientes)
    end

    def comprar_produto
        @produto = Produto.where(id: params[:produto]).first
    end

    def comprar_agora
        respond_to do |format|
            format.html
            format.pdf do
                render pdf: "Boleto de compra",
                page_size: 'A4',
                template: "pdfs/pdf.html.erb",
                layout: "pdf.html.erb",
                orientation: "Landscape",
                lowquality: true,
                zoom: 1,
                dpi: 75,
                encoding: "UTF-8",
                margin: {   
                    top:    5,
                    bottom: 0,
                    left:   5,
                    right:  5 
                }
            end
        end
    end

    private

    def procurar_id_prod
        @produto = Produto.find_by_id(params[:id])
    end

    def carregar_ingredientes
        @ingredientes = Ingrediente.all
    end

    def carregar_produtos
        @produtos = Produto.all
    end

end