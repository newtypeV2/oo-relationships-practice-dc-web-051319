class Listing

   attr_reader :city

   @@all = []

   def initialize(city)
       @city = city
       @@all << self
   end

   def guests
       self.trips.collect do |trip|
           trip.guest.name
       end
   end

   def trips
       Trip.all.select do |trip|
           trip.listing == self
       end
   end

   def self.all
       @@all
   end

   def trip_count
       self.trips.count
   end

   def self.find_all_by_city(city)
       self.all.select {|listings| listings.city == city}
   end

   def self.most_popular
       self.all.max_by do |listing|
           listing.trip_count
       end
   end

end
