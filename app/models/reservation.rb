class Reservation < ApplicationRecord
    belongs_to :venue, counter_cache: true
    validates :res_name, presence: true
end
