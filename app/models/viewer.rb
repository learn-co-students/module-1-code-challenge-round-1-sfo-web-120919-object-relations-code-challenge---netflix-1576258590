# - `Viewer#initialize(username)`
#   - `Viewer` is initialized with a username (string)
#   - username **can be** changed after the Viewer is initialized
# - `Viewer#username`
#   - returns the Viewer's username
# - `Viewer.all`
#   - returns an array of all the Viewer instances that have been initialized

# - `Viewer#reviews`
#   - returns an array of `Review` instances associated with the `Viewer` instance.
# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.

# - `Viewer#reviewed_movie?(movie)`
#   - a `Movie` instance is the only argument
#   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review::ALL.filter { |review| self == review.viewer }
  end

  def reviewed_movies
    reviews.map { |review| review.movie }
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      # change rating in review
      reviews.find { |review| review.movie == movie }.rating = rating
    else # review the movie
      Review.new(movie, self, rating)
    end
  end
end
