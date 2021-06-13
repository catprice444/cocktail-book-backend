class Api::V1::AlcoholsController < ApplicationController
    def index 
    end 

    def create 
    end 

    def show 
    end 

    def edit 
    end 

    private 
    def alcohol_params 
        params.require(:alcohol).permit(:name, :website, :preference)
    end 

end
