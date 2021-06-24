class Venue < ApplicationRecord
    has_many :reservations
    validates :name, :occupancy, :location, presence: true
end
