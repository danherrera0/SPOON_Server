class Api::V1::MatchesController < ApplicationController

  def index
    @matches = Match.all
    render json: @matches, status: :ok
  end

  def create
    Match.create(match_params)
  end

  private

  def match_params
    params.require(:match).permit(:user_id, :restaurant_id)
  end

end
