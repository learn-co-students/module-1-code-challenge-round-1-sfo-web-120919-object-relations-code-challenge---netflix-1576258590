class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end
#------------------------------------------------------


  def reviews 
    #returns an array of all the `Review` instances for the `Movie`.
    self.all.review

  end

  def reviewers
    #returns an array of all of the `Viewer` instances that reviewed the `Movie`.
    self.all.viewer

  end

  def average_rating
    # - returns the average of all ratings for the `Movie` instance
    # - to average ratings, add all ratings together and divide by the total number of ratings.


  end

  def self.movie_highest_rated
    #returns the `Movie` instance with the highest average rating.



  end



end
