#Hello lovely reviewers! 
#I am a bit behind this week and am still learning one:many relationships, 
#so all I really was able to do was set the structures up
#I will catch up over the weekend- thanks!


class Review
    #class is empty upon start of challenge

    attr_accessor :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)

        @viewer = viewer
        @movie = movie
        @rating = rating 

        @@all << self

    end

    def self.all
        @@all
      end


    def rating
    #returns the rating for the `Review` instance
        @rating

    end


    def viewer
    #returns the `Viewer` instance associated with the `Review` instance
        self.viewer

    end

    def movie
    # returns the `Movie` instance associated with the `Review` instance
        self.movie
        

    end


end
