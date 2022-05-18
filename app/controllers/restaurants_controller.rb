class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :edit, :update, :destroy, :show ]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new # needed to instantiate the form_for
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def show
  end

  def destroy
    @restaurant.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to restaurant_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permits(:name, :address, :phone_number, :category)
  end

end
