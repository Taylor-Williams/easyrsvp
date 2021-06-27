class Api::V1::VenuesController < ApplicationController

    def index
        @venues = Venue.all
        render json: @venues
    end

    def create
        # binding.pry
        @venue = Venue.new(venue_params)
        if @venue.save
            render json: @venue
        else
            render json: {error: "error creating venue"}
        end
    end

    def show
        @venue = Venue.find(params[:id])
        render json: @venue
    end

    def destroy
        @venue = Venue.find(params[:id])
        @venue.destroy
    end

    private

    def venue_params
        params.require(:venue).permit(:name, :occupancy, :location, :date)
    end

end
