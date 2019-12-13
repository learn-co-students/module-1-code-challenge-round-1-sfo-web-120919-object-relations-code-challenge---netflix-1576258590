require 'pry'

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def reviewed_movie?(movie)
    if @username.movie == Review
      return true
    else
      return false
    #if reviewed movie return true
    end
  end


  def review
    reviewing = Review.all.select do |review|
      review.viewer == self
    end
  end

  def rate_movie(movie, rating)
    if @username.movie == Review


    # if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method 
    #should create a new `Review` instance
    # if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance
  end
  
end
