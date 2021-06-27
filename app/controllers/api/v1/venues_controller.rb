class Api::V1::VenuesController < ApplicationController

    def index
        @venues = Venue.all
        render json: @venues
    end

    def create
        @venue = Venue.new(venue_params)
        binding.pry
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
        if @venue.destroy
            render json: @venue
        else 
            render json: {error: "could not destroy venue"}
        end
    end

    private

    def venue_params
        params.require(:venue).permit(:name, :occupancy, :location, :date, :contact, :reservations_count)
    end

end
