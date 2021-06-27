class Venue < ApplicationRecord
    has_many :reservations
    validates :name, :occupancy, :location, :date, presence: true
    validates :date, date: { after_or_equal_to: Proc.new { Date.today },
        message: 'Venue date cannot be before today\'s date' }, on: :create

    def spots_left
        occupancy - reservations_count.to_i
    end

    def days_left
        (DateTime.parse(date.to_date.to_s) - Date.today).to_i 
    end

    def display_date #only goes to pst for now
        pstdate = ActiveSupport::TimeZone['Pacific Time (US & Canada)'].parse(date.to_time.to_s)
        pstdate.strftime("%B %-d %Y at %I:%M %P")
    end
end