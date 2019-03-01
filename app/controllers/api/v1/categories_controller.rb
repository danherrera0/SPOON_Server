class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories, status: :ok
  end

  def create
    Category.create(category_params)
  end

  private

  def category_params
    params.require(:category).permit(:alias, :title, :restaurant_id)
  end


end
