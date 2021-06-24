class Reservation < ApplicationRecord
    belongs_to :venue
    validates :res_name, :phone_number, :res_size, presence: true
    # validates_inclusion_of :time_of_day, :in => %w(breakfast lunch dinner)
end
