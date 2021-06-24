class Api::V1::VenuesController < ApplicationController

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
        params.require(:venue).permit(:name, :occupany, :location)
    end

end
