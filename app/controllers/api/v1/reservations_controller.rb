class Api::V1::ReservationsController < ApplicationController

    def index

    end

    def create

    end

    def show

    end

    def destroy

    end

    private

    def reservation_params
        params.require(:reservation).permit(:venue_id, :date, :res_name, :phone_number, :res_size)
    end

end
