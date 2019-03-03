class Api::V1::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render json: @restaurants, status: :ok
  end

  def update
    @restaurant= Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :image, :yelp_link, :tags, :rating, :coordinates, :price, :location1)
  end

end
