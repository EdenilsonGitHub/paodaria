class Produto < ActiveRecord::Base
    self.table_name = 'prod'

    include Paperclip::Glue

    has_many :rel_prod_ing, class_name: 'Relproding', foreign_key: :produto_id
    has_many :ingredientes, through: :rel_prod_ing

    belongs_to :unidade_medida
    
    has_attached_file :foto, styles: { normal: "300x300>", loja: "250x200>" }
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/

    validates :nome, :descricao, :codigo_de_barras, :quantidade, :preco, presence: true
    validates :codigo_de_barras, uniqueness: true
    validates :codigo_de_barras, length: { minimum: 12, message: 'é muito curto (mínimo: 12 caracteres)' }
    validates :codigo_de_barras, length: { maximum: 13, message: 'é muito longo (máximo: 13 caracteres)' }
    validates :nome, length: { maximum: 55, message: 'é muito longo (máximo: 55 caracteres)' }
    validates :estrela, numericality: { only_integer: true }
    validates :estrela, length: {is: 1, message: 'não possui o tamanho esperado (1 caractere)'}, allow_blank: false
    validates :estrela, numericality: true

    def estrela_entre_1_5?(produto)
        if produto.estrela >= 0 && produto.estrela <= 5
            return true
        else
            return false
        end
    end
end 