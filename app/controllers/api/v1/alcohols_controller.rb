class Api::V1::AlcoholsController < ApplicationController
  
    def index 
        @alcohols = Alcohol.all 
        render json: @alcohols
    end 

    def create
        @alcohol = Alcohol.new(alcohol_params)
        if @alcohol.name != 'null' && @alcohol.save
            render json: @alcohol 
        else 
            render json: {error: "Make sure to fill in all fields"}
        end 
    end 

    def show 
        @alcohol = Alcohol.find(params[:id])
        render json: @alcohol
    end 

    def update
        @alcohol = Alcohol.find_by(params[:id])
        @alcohol.update(website: params["alcohol"]["website"])
        @alcohol.save
        render json: @alcohol
    end

    private 
    def alcohol_params 
        params.require(:alcohol).permit(:name, :website)
    end 

end
