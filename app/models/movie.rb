class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    #self.class.all << self
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |ele|
      ele.movie.title == self.title
    end
  end

  def reviewers
    # Review.all.map |ele| ele.viewer}
    new_arr = []
    Review.all.each do |ele|
      if ele.movie.title == self.title
        new_arr << ele.viewer
      end
    end
    return new_arr
    # binding.pry
  end

  # def average_rating
  #   new_arr = []
  #   new_arr = self.reviews
  #   sum = 0
  #   i = 0
  #   len = new_arr.length
  #   while i < 
  #     rate = new_arr[i].rating
  #     # binding.pry
  #     sum += rate
  #     i += 1
  #   end
  #   sum/len
  # end
  # def average_rating
  #   new_arr = []
  #   new_arr = Review.all
  #   sum = 0
  #   i = 0
    
    
  #   sum/len
  # end
  def average_rating
   sum = 0
   count = 0
    Review.all.map do |ele|

      if ele.movie.title == self.title
        count += 1
        sum += ele.rating
      end
    end
    sum/count
  end
end
