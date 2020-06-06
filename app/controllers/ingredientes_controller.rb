class IngredientesController < ApplicationController
    before_action :procurar_id, only: [:show, :edit, :update, :destroy]



end