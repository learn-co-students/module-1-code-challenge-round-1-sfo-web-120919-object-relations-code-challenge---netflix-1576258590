require 'pry'

class Movie
  attr_accessor :title, :rating

  @@all = []


  def initialize(title)
    @title = title
    @rating = []
    @@all << self
  end

  def self.all
    @@all
  end

  def average_rating
   average = self.rating.sum / self.rating.size.to_f
   return average
    # returns the average of all ratings for the `Movie` 
    #to average ratings, add all ratings together and divide by the total number of ratings.
  end

  def highest_rated
    average = average_rating
    movie_av_rating = @title.average
    highest = movie_av_rating.max
  #@title.average_rating.max ????
  # returns the Movie  with the highest average rating.
  end

  def review
    reviewing = Review.all.select do |review|
      review.movie == self
    end
  end

end
