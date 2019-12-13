require_relative "./models/movie"
require_relative "./models/review"
require_relative "./models/viewer"

m1 = Movie.new("awesome movie1")
m2 = Movie.new("awesome movie2")
v1 = Viewer.new("jason")
v2 = Viewer.new("bear")
v3 = Viewer.new("kuma")
r1 = Review.new(m1, v1, 15)
v1.rate_movie(m1, 10)
v1.rate_movie(m1, 2)
puts Movie.all
puts Viewer.all
puts Review::ALL

puts m1.average_rating
