# - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance

class Review
  attr_reader :movie, :viewer, :rating
  attr_writer :rating

  ALL = []

  def initialize(movie, viewer, rating)
    @movie = movie
    @viewer = viewer
    @rating = rating
    ALL << self
  end
end
