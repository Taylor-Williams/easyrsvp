class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :res_name, :phone_number, :venue_id
end
