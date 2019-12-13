class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def username
    @username
  end

  def viewer#reviewed_movie?(movie)
    if viewer.review
      return true
    else
      return false
    end
  end
end
