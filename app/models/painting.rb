class Painting
  @@all = []

  attr_reader :artist, :title, :price, :gallery

  @@all = []

  def initialize(artist, title, price, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.total_price
    Painting.all.map {|paint| paint.price}.sum
  end
  
end
