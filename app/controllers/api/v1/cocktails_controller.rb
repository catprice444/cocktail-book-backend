class Api::V1::CocktailsController < ApplicationController
    before_action :set_alcohol, except: [:index]
    
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
            render json: {error: "Make sure to fill in all fields"}
        end 
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
