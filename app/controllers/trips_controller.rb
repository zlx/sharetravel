class TripsController < ApplicationController
  def index
    @trips = Trip.limit(12)
  end

  def show
  end

  def edit
  end

  def update
  end
end
