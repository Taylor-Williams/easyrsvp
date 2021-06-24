class Reservation < ApplicationRecord
    belongs_to :venue
    validates :res_name, :phone_number, :res_size, presence: true
end
