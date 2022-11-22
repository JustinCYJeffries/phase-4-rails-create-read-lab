class PlantsController < ApplicationController
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
      end
      def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
      end
      def index
        plants = Plant.all
        render json: plants
      end
      # other controller actions here
    
      private
      # all methods below here are private
    
      def plant_params
        params.permit(:name, :image, :price)
      end
    
    end
