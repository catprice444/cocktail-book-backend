class Api::V1::AlcoholsController < ApplicationController
    def index 
        @alcohols = Alcohol.all 
        render json: @alcohols
    end 

    def create 
        @alcohol = Alcohol.new(alcohol_params)
        if @alcohol.save 
            render json: @account 
        else 
            render json: {error: "Error creating Alcohol"}
        end 
    end 

    def show 
        @alcohol = Alcohol.find(params[:id])
        render json: @alcohol
    end 

    def update
        @alcohol = Alcohol.find_by(params[:id])
        @alcohol.update(website: params["alcohol"]["website"], preference: params["alcohol"]["preference"])
        @alcohol.save
        render json: @alcohol
    end

    private 
    def alcohol_params 
        params.require(:alcohol).permit(:name, :website, :preference)
    end 

end
