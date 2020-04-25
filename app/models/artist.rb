class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|paint| paint.artist == self}
  end

  def galleries
    self.paintings.map{|paint| paint.gallery}.uniq
  end

  def cities
    self.paintings.map{|paint| paint.gallery.city}.uniq
  end

  def self.total_experience
    years = Artist.all.map{|art| art.years_experience}.sum
    years
    #avg = (years.sum / years.length.to_f).round(2)
  end

  def qtd_paintings
    self.galleries.length
  end

  def avg_paint_year
    self.qtd_paintings / self.years_experience.to_f
  end

  def self.most_prolific
   Artist.all.max_by {|art| art.avg_paint_year}
  end

  def create_painting(title, price, gallery)
    Painting.new(self, title, price, gallery)    
  end

end
