class RestaurantsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find params[:id]
  end

  def edit
  end

  def update
  end
end
