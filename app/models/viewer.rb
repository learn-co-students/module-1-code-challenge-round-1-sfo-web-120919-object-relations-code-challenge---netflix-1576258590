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
#-------------------------------------------------

  def reviews
    #returns an array of `Review` instances associated with the `Viewer` instance.
    self.all.review 

  end

  def reviewed_movies
    #returns an array of `Movie` instances reviewed by the `Viewer` instance.
    self.all.movie

  end

  def reviewed_movie?(movie)
    #returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise


  end

  def rate_movie(movie, rating)
    # if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
    # if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance
    
  end




  
end
