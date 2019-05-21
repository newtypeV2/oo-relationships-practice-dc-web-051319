class Character

  @@all = []
    attr_reader :name,:actor

  def initialize(name,actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

  def get_movies
      Character_Movie.all.select {|cast| cast.character == self}
  end

  def movies_count
    self.get_movies.count
  end

  def self.most_appearances
    self.all.max_by {|character| character.movies_count}.name
  end

end
