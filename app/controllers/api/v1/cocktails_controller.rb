class Api::V1::CocktailsController < ApplicationController
    def index 
        @cocktails = Cocktail.all
        render json: @cocktails
    end 

    def show 
        @cocktail = Cocktail.find(params[:id])
        render json: @cocktail
    end 

    def create
        @cocktail = Cocktail.new(cocktail_params)
        if @cocktail.save 
            render json: @cocktail
        else 
            render json: (error: "Error making Cocktail")
        end 
    end 

    def update
        @cocktail = Cocktail.find(params[:id])
        @cocktail.update(recipe: params["cocktail"]["recipe"], ingredients: params["cocktail"]["ingredients"], rating: params["cocktail"]["rating"] )
        @cocktail.save
        render json: @cocktail
    end 

    def destroy
        @cocktail = Cocktail.find(params[:id])
        @cocktail.destroy
    end 

    private
    def cocktail_params
        params.require(:cocktail).permit(:name, :recipe, :ingredients, :rating, :alcohol)
    end 

end
