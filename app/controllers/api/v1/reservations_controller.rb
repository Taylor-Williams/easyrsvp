class Api::V1::ReservationsController < ApplicationController

    before_action :set_venue

    def index
        @reservations = @venue.reservations
        render json: @reservations
    end

    def create
        @reservation = Reservation.new(reservation_params)
        #TODO: build out logic to only allow certain # of reservations for time period
        if @reservation.save
            render json: @venue
        else
            render json: {error: "error creating reservation"}
        end
    end

    def show
        @reservation = Reservation.find(params[:id])
        render json: @reservation
    end

    def destroy
        @reservation = Reservation.find(params[:id])
        @reservation.destroy
    end

    private

    def set_venue
        @venue = Venue.find(params[:venue_id])
    end

    def reservation_params
        params.require(:reservation).permit(:venue_id, :date, :res_name, :phone_number, :res_size)
    end

end
