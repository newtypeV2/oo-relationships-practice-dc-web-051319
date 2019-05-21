require "./app/IMDBModels/Actor.rb"
require "./app/IMDBModels/Character_Movie.rb"
require "./app/IMDBModels/Character.rb"
require "./app/IMDBModels/Movie.rb"
require "pry"


movie1=Movie.new("Back to the Future")
movie2=Movie.new("Back to the Future Part 2")
movie3=Movie.new("Harry Potter and the Order of the Phoenix")
movie4=Movie.new("Victor Frankenstein")

actor1=Actor.new("Michael F.")
actor2=Actor.new("Christopher L.")
actor3=Actor.new("Daniel R.")
actor4=Actor.new("Emma W.")
actor5=Actor.new("Jessica")
actor6=Actor.new("Rupert G.")

character1=Character.new("Marty McFly",actor1)
character2=Character.new("Doc Brown",actor2)
character3=Character.new("Igor",actor3)
character4=Character.new("Harry Potter",actor3)
character5=Character.new("Hermoine Granger",actor4)
character6=Character.new("Lorelei",actor5)
character7=Character.new("Ron Weasley",actor6)

character_movie1 = Character_Movie.new(movie1,character1)
character_movie2 = Character_Movie.new(movie1,character2)
character_movie3 = Character_Movie.new(movie2,character1)
character_movie4 = Character_Movie.new(movie2,character2)
character_movie5 = Character_Movie.new(movie3,character4)
character_movie6 = Character_Movie.new(movie3,character5)
character_movie7 = Character_Movie.new(movie4,character3)
character_movie8 = Character_Movie.new(movie4,character6)
character_movie9 = Character_Movie.new(movie3,character7)
character_movie10 = Character_Movie.new(movie4,character2)

puts "Movie titles"
p Movie.all

puts "Test for .most actors"
puts Movie.most_actors

puts "Test for .most apperances"
puts Character.most_appearances

puts "Test for .most character"
puts Actor.most_characters
# binding.pry

# "HI"
