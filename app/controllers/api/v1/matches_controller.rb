class Api::V1::MatchesController < ApplicationController

  def index
    @matches = Match.all
    render json: @matches, status: :ok
  end

  def show
    @match = Match.find(params[:id])
    render json: @match, status: :ok
  end

  def create
    Match.create(match_params)
    render json: @match, status: :ok

  end

  def destroy
    Match.find(params[:id]).destroy
    render json: @match, status: :ok

  end

  private

  def match_params
    params.require(:match).permit(:user_id, :restaurant_id)
  end

end
