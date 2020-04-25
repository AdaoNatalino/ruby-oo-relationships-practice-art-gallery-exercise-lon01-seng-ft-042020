class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|paint| paint.gallery == self}
  end

  def artists
    self.paintings.map {|paint| paint.artist}
  end

  def artist_names
    self.artists.map{|art| art.name}
  end

  def most_expensive_painting
    self.paintings.max_by {|paint| paint.price}
  end

end
