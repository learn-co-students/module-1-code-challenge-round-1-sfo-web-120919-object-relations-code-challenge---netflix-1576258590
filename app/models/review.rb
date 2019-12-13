class Review
    attr_accessor :viewer, :movie, :rating

    @@all = []
  
    def initialize(viewer, movie, rating = 0)
      @viewer = viewer[@review]
      @movie = movie[@review]
      @rating = 0

      self.class.all << self
    end
  
    def self.all
      @@all
    end
    
end
