# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
venueOne = Venue.create(name: 'home', occupancy: 2, location: 'my house')
reservationOne = Reservation.create(venue_id: 1, res_name: 'taylor', phone_number: '123-456-7890', res_size: 1)