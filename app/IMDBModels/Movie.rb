class Movie

  @@all =[]
    attr_reader :title

  def initialize(title)
    @title = title
    @@all << self
  end

  def get_characters
    Character_Movie.all.select {|cast| cast.movie == self}
  end

  def characters_count
    self.get_characters.count
  end

  def self.most_actors
    self.all.max_by {|movie| movie.characters_count}.title
  end

  def self.all
    @@all
  end

end
