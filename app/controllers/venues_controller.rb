class VenuesController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :destroy ]

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to venues_path
  end

  private
  def venue_params
    params.require(:venue).permit(:name, :description, :address, :rating, :size, :categories, :wifi, :charging_outlet)
  end
end
