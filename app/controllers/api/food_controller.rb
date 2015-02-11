module Api
  class FoodController < ApplicationController

    def index
      food = Food.all
      render json: food.to_json(only: [:name, :expiration, :id, :created_at, :food_type])
    end

    def show
      food = Food.find(params[:id])
      render json: food.to_json(only: [:name, :expiration, :id, :created_at, :food_type, :photo_url])
    end

    def create
      food = Food.new(params.require(:food).permit(:name, :expiration, :food_type))

      if food.save
        render json: food.to_json(only: [:name, :expiration, :id, :created_at, :food_type])
      else
        render json: {errors: food.errors}, status: 422
      end
    end
  end
end
