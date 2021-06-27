class Venue < ApplicationRecord
    has_many :reservations
    validates :name, :occupancy, :location, :date, presence: true

    validates :date, date: { after_or_equal_to: Proc.new { Date.today },
        message: 'Venue date cannot be before today\'s date' }, on: :create

end