class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    # self.class.all << self
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |ele|
      ele.viewer.username == self.username
    end
  end

  def reviewed_movies
    new_arr = []
    Review.all.each do |ele|
      if ele.viewer.username == self.username
        new_arr << ele.movie
      end
    end
    return new_arr
  end
  
end
