class Movie
  attr_accessor :title, :review, :reviewers

  @@all = []
  @@review = []
  @@reviewers = []

  def initialize(title)
    @title = title
    self.class.all << self
    @@review << @movie.review
    @@reviewers 


  end

  def self.all
    @@all
  end
  
  d


end
