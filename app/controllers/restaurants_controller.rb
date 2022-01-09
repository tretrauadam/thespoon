# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def create; end

  def edit; end

  def update; end

  def destroy; end
end
