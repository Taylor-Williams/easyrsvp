class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :occupancy, :location, :contact, :date, :spots_left, :days_left, :display_date
  has_many :reservations
end
