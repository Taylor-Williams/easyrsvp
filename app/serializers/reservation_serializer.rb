class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :date, :res_name, :phone_number, :res_size
end
