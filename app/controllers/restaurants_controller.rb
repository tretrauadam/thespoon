# frozen_string_literal: true

class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])

  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(restaurant_params)
    redirect_to restaurant_path
  end

  def edit
    @restautant = Restaurant.find(params[:id])
  end

  def update
    @restautant = Restaurant.find(params[:id])
    Restaurant.update(restaurant_params)
    redirect_to restaurant_path
  end

  def destroy
    @restaurant = Restaurant.find(param[:id])
    
  end

  private

  def restaurant_params
   params.require(:restaurant).permit(:name, :rating)
  end
end
