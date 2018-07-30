class Clothes 
  @@closet = []
  attr_accessor :clothing
  def initialize (clothing)
    @clothing = clothing
    @@closet << clothing
  end 
  
  def self.closet 
    @@closet
  end
end 

# clothes1 = Clothes.new("shirt")
# clothes2 = Clothes.new("pants")

# puts Clothes.closet 

class DisneyMovies
  @@movies = {}
  attr_accessor :movie 
  def initialize(movie)
    @movie = movie
    @@movies[movie] = []
  end
  
  def add_character (character)
    @@movies[@movie] << character
  end 
  
  def self.movies
    @@movies
  end
end

movie1 = DisneyMovies.new("Hercules")
movie1.add_character("Pegasus")

movie2 = DisneyMovies.new("Mulan")
movie2.add_character("Li-Shang")

movie3 = DisneyMovies.new("Tangled")
movie3.add_character("Rapunzel")

puts DisneyMovies.movies
