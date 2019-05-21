class Actor

  @@all = []
    attr_reader :name

    def initialize(name)
      @name = name
      @@all << self
    end
    # .most_characters
    # should return which actor has the most different characters played. (probably meryl streep)

    def get_characters
      Character.all.select do |character| character.actor == self end
    end

    def count_characters
      self.get_characters.count
    end

    def self.all
      @@all
    end

    def self.most_characters
      self.all.max_by do |actor| actor.count_characters end.name
    end

end
