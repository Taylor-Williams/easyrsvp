class Api::V1::VenuesController < ApplicationController

    def index
        @venues = Venue.all
        render json: @venues
    end

    def create
        if venue_params[:date]
            venue_params[:date] = DateTime.parse(venue_params[:date].to_time.to_s)
        end
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
        params.require(:venue).permit(:name, :occupancy, :location, :date, :contact, :reservations_count)
    end

end
