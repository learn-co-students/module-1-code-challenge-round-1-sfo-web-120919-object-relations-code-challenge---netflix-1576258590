class Viewer
  attr_accessor :username, :movie, :review

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
    @reviews = []
    @movies =[]
    movie.viewers << self
  end

  def self.all
    @@all
  end

  def reviews
    self.reviews.map |review|
      reviews
    end
  end

  def reviewed_movies
    movies.self.map |movie|
      movies
    end
  end

  def reviewed_movie?(movie)
    if 
      
    end
  end
  
end
