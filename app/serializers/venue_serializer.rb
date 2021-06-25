class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :occupancy
  has_many: reservations
end
