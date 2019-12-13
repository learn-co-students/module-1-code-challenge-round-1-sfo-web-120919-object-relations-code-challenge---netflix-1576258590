class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def Movie_title
    @title
  end
  
  def sum
    sum = 0
    i = 0
    while i < @allreviews.length
      array.each do |element|
        sum += element
      end
    i += 1
    end
    return sum

  def average_rating(sum)
    average = sum/@allreviews.length
    return @allreviews.max
  end
  #i tried to run this code in 
  #repl and it said that the average_rating method was undefined. 




end
