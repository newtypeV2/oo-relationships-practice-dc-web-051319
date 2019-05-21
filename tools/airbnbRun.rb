require "./app/airbnbModels/Guest.rb"
require "./app/airbnbModels/Listing.rb"
require "./app/airbnbModels/Trip.rb"


listing1 = Listing.new("DC")
listing2 = Listing.new("Seattle")
listing3 = Listing.new("NYC")
listing4 = Listing.new("DC")

guest1 = Guest.new("guest1")
guest2 = Guest.new("guest2")
guest3 = Guest.new("guest3")
guest4 = Guest.new("guest4")

trip1 = Trip.new(listing1, guest4)
trip2 = Trip.new(listing2, guest1)
trip3 = Trip.new(listing1, guest3)
trip4 = Trip.new(listing3, guest4)

puts "This is a test for Listing.guest method"
puts listing1.guests.include?("guest4")
puts "This is a test for Listing.trips method"
puts listing2.trips.include?(trip2)
puts "This is a test for guest.listings method"
puts guest4.listings.include?("NYC")
puts "This is a test for guest.trips method"
puts guest3.trips.include?(trip3)
