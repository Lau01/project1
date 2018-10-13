class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find params[:id]
  end

  def index
    @cuisines = Cuisine.all
  end
end
