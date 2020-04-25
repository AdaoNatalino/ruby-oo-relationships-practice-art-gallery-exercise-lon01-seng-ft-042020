require_relative '../config/environment.rb'

#artists
leo = Artist.new("Leonardo_da_Vince", 1)
van = Artist.new("Van-Gough", 2)
mon = Artist.new("Monet", 3)
 
#galeries
ml = Gallery.new("Musean_of_Luvre", "Paris")
af = Gallery.new("Anne_Frank_House", "Amsterda")


#paintings
mn = Painting.new(leo, "Monalisa", 1000, ml)
tl = Painting.new(leo, "The_Last_Supper", 2000, ml)
vi = Painting.new(leo, "Virgin_of_the_Rocks", 900, af)

ts = Painting.new(van, "The_Starry_Night", 1500, af)
tp = Painting.new(van, "The_Potato_Easters", 1279, af)

tw = Painting.new(mon, "The_Watter_Lyly_Pound", 349, af)
is = Painting.new(mon, "Impression_Sunrise", 1739, ml)

#binding.pry

puts "Bob Ross rules."
