class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    @reviews = []
    @viewers = []
    viewer.movies << self
  end

  def self.all
    @@all
  end

  def reviews
    reviews.self.map |review|
      movies
    end
  end

  def reviewers
    viewers.self.map |viewer|
      viewers 
  end
end
