class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @categories = Restaurant::CATEGORIES
  end

  def create
    @restaurant = Restaurant.new(set_restaurant)
    @restaurant.save

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def set_restaurant
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
