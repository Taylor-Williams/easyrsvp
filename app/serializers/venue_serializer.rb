class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :occupancy, :location, :contact, :date, :spots_left, :days_left
  has_many :reservations
end
