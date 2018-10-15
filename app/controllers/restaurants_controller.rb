class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new (restaurant_params)
    @restaurant.user = @current_user
    @restaurant.save

    if @restaurant.persisted?
      redirect_to restaurants_path
    else
      flash[:errors] = @restaurant.errors.full_messages
      render :new
    end
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

  def destroy
    # unless @restaurant.user == @current_user
    #   redirect_to restaurants_path
    #   return
    # end
    Restaurant.find(params[:id]).destroy
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :open_hrs, :cost_two, :phone, :user_id, :image)
  end
end
