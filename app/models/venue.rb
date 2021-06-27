class Venue < ApplicationRecord
    has_many :reservations
    validates :name, :occupancy, :location, :date, presence: true
end