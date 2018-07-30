class Song  
  attr_accessor :song, :artist, :album, :genre, :length
  def initialize( song, artist, album)
    @song = song 
    @artist = artist
    @album = album
  end
  def genreAndLength
    return "The title of your song is #{@song} by #{@artist} from the album #{@album}. It falls in the genre #{genre} and is #{length} long."
  end
  def justGenre
    return "The title of your song is #{@song} by #{@artist} from the album #{@album}. It falls in the genre #{genre}."
  end 
  def justLength
    return "The title of your song is #{@song} by #{@artist} from the album #{@album}. It is #{length} long."
  end 
  def noLengthOrGenre
    return "The title of your song is #{@song} by #{@artist} from the album #{@album}."
  end 
end

puts "Hello! Welcome to Song Creator 2.0 (don't ask about Song Creator 1.0...)\nWould you like to create a song today?(Y or N)"
answer = gets.chomp.capitalize 
if answer == "Y"
  puts "Please enter the title of the song :: "
  song = gets.chomp.capitalize
  
  puts "Please enter the artist of the song :: "
  artist = gets.chomp.capitalize
  
  puts "Please enter the title of the album of the song :: "
  album = gets.chomp.capitalize
  
  song = Song.new(song, artist, album)
    
  puts "Would you like to add the genre of the song? (Y or N)"
  answer1 = gets.chomp.capitalize
  
  if answer1 == "Y"
    puts "What is the genre of the song?"
    genre = gets.chomp.capitalize
    song.genre = genre
  end
  
  puts "Would you like to add the length of the song? (Y or N"
  answer2 = gets.chomp.capitalize
  
  if answer2 == "Y"
    puts "What is the length of the song? (minutes:seconds)"
    length = gets.chomp
    song.length = length
  end
  
  if (answer1=="Y" && answer2=="Y")
    puts song.genreAndLength
  
  elsif (answer1=="Y" && answer2=="N")
    puts song.justGenre
  
  elsif (answer1=="N" && answer2=="Y")
    puts song.justLength
    
  else
    puts song.noLengthOrGenre
  end
  
else 
  puts "Then you may leave"
end

