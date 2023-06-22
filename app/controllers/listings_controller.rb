class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render json: @listings
  end

  def create
    @listing = Listing.create(strong_params)
    render json: @listing
  end

  private

  def strong_params
    params.require(:listing).permit(:num_rooms)
  end
end
