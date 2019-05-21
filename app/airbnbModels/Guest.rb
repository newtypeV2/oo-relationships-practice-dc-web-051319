class Guest

   attr_reader :name
   @@all = []

   def initialize (name)
       @name = name
       @@all << self
   end

   def listings
       self.trips.collect do |trip|
           trip.listing.city
       end
   end

   def trips
       Trip.all.select do |trip|
           trip.guest == self
       end
   end

   def trip_count
       self.trips.count
   end

   def self.all
       @@all
   end

   def self.pro_traveller
       self.all.collect do |guest|
           guest.trip_count > 1
       end
   end

   def self.find_all_by_name(input)
       self.all.select do |guest|
           guest.name == input
       end
   end

end
