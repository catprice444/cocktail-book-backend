class Api::V1::CocktailsController < ApplicationController
    before_action :set_alcohol
    
    def index 
        @cocktails = Cocktail.all
        render json: @cocktails
    end 

    def show 
        @cocktail = Cocktail.find(params[:id])
        render json: @cocktail
    end 

    def create
        @cocktail = @alcohol.cocktails.new(cocktail_params)
        if @cocktail.save 
            render json: @alcohol
        else 
            render json: {error: "Error making Cocktail"}
        end 
    end 

    def update
        @cocktail = Cocktail.find_by(params["id"])
        @cocktail.update(recipe: params["cocktail"]["recipe"], ingredients: params["cocktail"]["ingredients"], rating: params["cocktail"]["rating"] )
        @cocktail.save
        render json: @cocktail
    end 

    def destroy
        @cocktail = Cocktail.find(params["id"])
        @cocktail.destroy
        render json: @alcohol
    end 

    private

    def set_alcohol 
        @alcohol = Alcohol.find(params[:alcohol_id])
    end 

    def cocktail_params
        params.require(:cocktail).permit(:name, :recipe, :ingredients, :rating, :alcohol_id)
    end 

end
