class Viewer
  attr_accessor :username, :reviews, :movie

  @@all = []
  @@reviews = []
  @@movie = []

  def initialize(username)
    @username = username
    self.class.all << self
    @@reviews << @username.viewer
    @@movie << @username.movie
  end

  def self.all
    self.all
  end
  
  def self.review 
    @@reviews 
  end

  def self.movie
    @username + @@movie
  end
end
