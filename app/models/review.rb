class Review

    @all_review = []

    @@viewer
    @@review

    def initialize(viewer,movie,rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all_review << self

    end

    def rating
        @rating
    end

    def self.all
        @all
    end

    def Review#Viewer
         @all & @all_review
         

    end

    def Viewer#Reviews
        @all_review && @all

    end



end

#I am really stuck and do not how to tackle this.
#I was having trouble with the one to many lab and 
#spent yesterday trying to solve it with Eddy and Matt the teacher.
#This morning I tried to complete it, 
#I thought that would help me with this test.
#so I tried to understand that first
#because I figured it was a good idea to have an understanding
#of that and hopefully it would help me on this test.
#I was so focussed on banking I did not spend enough time on many to many, and 
#I see now where I need to study this weekend.
#I tried googling "many to many relationships in ruby, and just found
#tables, not anything indicating how to connect the code.
#I also tried "how to connect classes in many to many relationships" and got
#the same results. 