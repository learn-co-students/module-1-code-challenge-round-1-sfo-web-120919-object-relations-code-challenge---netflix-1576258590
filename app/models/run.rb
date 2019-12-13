require "pry"
require_relative 'movie.rb'
require_relative 'viewer.rb'
require_relative 'review.rb'


movie1 = Movie.new("Avengers")
movie2 = Movie.new("Spiderman")
viewer1 = Viewer.new("Vicky")
viewer2 = Viewer.new("Sunny")
review1 = Review.new(viewer1,movie1,10)
eview1 = Review.new(viewer2,movie1,10)
review2 = Review.new(viewer2,movie2,9)

# binding.pry

# puts movie1.reviews
# puts movie1.reviewers
# puts movie2.reviewers
# puts viewer1.reviews
# puts viewer1.reviewed_movies
# puts viewer2.reviewed_movies
# puts movie1.highest_rated
# binding.pry