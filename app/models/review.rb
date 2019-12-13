class Review
    attr_accessor :viewer, :movie, :rating


    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
        movie.reviews << self
        viewer.reviews << self
    end

    def viewer
        viewer.self
    end

    def movie
        movie.self
    end

    
end
