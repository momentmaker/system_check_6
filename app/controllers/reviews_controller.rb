class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)

    if @review.save
      redirect_to @restaurant, notice: 'Your review has been submitted.'
    else
      render 'new'
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
