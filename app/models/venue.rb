class Venue < ApplicationRecord
    has_many :reservations
    validates :name, :occupancy, :location, :date, presence: true
    validates :reservations_count, numericality: {less_than_or_equal_to: :occupancy}
    validates :date, date: { after_or_equal_to: Proc.new { Date.today },
        message: 'Venue date cannot be before today\'s date' }, on: :create

    def spots_left
        occupancy - reservations_count.to_i
    end

    def days_left
        (date - Date.today).to_i 
    end
end