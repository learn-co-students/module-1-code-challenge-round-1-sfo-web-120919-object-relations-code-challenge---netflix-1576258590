# - `Movie#initialize(title)`
#   - `Movie` is initialized with a title (string)
#   - title **can be** changed after the `Movie` is initialized
# - `Movie#title`
#   - returns the `Movie`'s title
# - `Movie.all`
#   - returns an array of all the `Movie` instances that have been initialized

# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.

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

  def reviews
    Review::ALL.filter { |review| self == review.movie }
  end

  def reviewers
    reviews.map { |review| review.viewer }
  end

  def average_rating
    # average rating for this movie
    my_reviews = reviews
    (my_reviews.sum { |review| review.rating } * 1.0) / my_reviews.length
  end
end
