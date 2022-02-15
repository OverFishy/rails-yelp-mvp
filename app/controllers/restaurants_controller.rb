class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show]

  # GET /restaurants.
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/new.
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1.
  def show
  end

  # POST /restaurants.
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  private

  # Use callbacks to share common setup between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a trusted parameter through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
