class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :occupancy, :location, :contact, :date
  has_many :reservations
end
