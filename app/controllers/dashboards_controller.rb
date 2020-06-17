class DashboardsController < ApplicationController

    def index
        @produtos = Produto.all
        @empresas = Empresa.all
        @funcionarios = Usuario.all

        @cont_emp = Empresa.all.length
        @empresas_func = [@cont_emp-1]
        @empresas.each_with_index do |emp, index|
            @empresas_func[index] = Usuario.where(empresa_id: emp.id)
        end
    end

end