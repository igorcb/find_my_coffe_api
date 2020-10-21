class Api::V1::GoogleStoresController < ApplicationController
  def index
    places = GetGoogleCoffeeListService.new(params[:longitude], params[:latitude]).call
    render json: places
  end

  def show
    render json: GetGoogleCoffeeDetailsService.new(params[:id]).call
  end
end
