fav_movies = ["Harry Potter", "Boyhood", "Legally Blonde"]
fav_movies << "The Age of Adaline"


#you can use insert or push or unshift
  #<< shovel goes at the end
  #insert goes to a specific position
  #push adds multiple things to the end of the Array
  #unshift adds data to the beginning of the array 
  
fav_movies.delete_at(0)

puts fav_movies