class DashboardsController < ApplicationController

    def index
        @produtos = Produto.all
    end

end