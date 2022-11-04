class PlantsController < ApplicationController
    def index
         render json: Plant.all
    end

    def show
        render json: Plant.find(params[:id])
    end
    
    def add
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    def plant_params
        params.permit(:name, :image, :price)
    end
end