class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order(updated_at: :desc).limit(10)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews.order(updated_at: :desc)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Your restaurant has been submitted.'
    else
      render 'new'
    end
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zipcode, :description, :category)
  end
end
