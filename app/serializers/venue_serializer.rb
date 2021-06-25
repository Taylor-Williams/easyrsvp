class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :occupancy, :location
  has_many :reservations
end
