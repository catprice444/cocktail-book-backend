class Api::V1::CocktailsController < ApplicationController
    def index 
    end 

    def show 
    end 

    def create
    end 

    def edit 
    end 

    def destroy
    end 

    private
    def cocktail_params
        params.require(:cocktail).permit(:name, :recipe, :ingredients, :rating, :alcohol)
    end 

end
