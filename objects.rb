class Dog 
  attr_accessor :furColor, :breed, :name, :energy
  @@dogCount = 0 
  @@breeds = []
  @@tag = {}
  def initialize (furColor, breed)
    @furColor = furColor
    @breed = breed
    @energy = 10
    @@dogCount += 1 
    @@breeds << breed 
    @@tag[breed] = furColor
  end 
  
  def self.breeds 
    @@breeds
  end
  
  def self.dogCount
    @@dogCount
  end
  
  def self.tag 
    @@tag.each do |breed, color|
      puts "The breed is #{breed} and the color is #{color}."
    end
  end 
  
  def speak                 #instance method: call on one instance at a time
    puts "Hi! I'm #{@name}!"
  end
  
  def rest  
    @energy += 1
  end 
   
  def play
    @energy -= 1
  end
end 
# #create an instance/ object within the class
dog1 = Dog.new("brown", "corgi")
dog2 = Dog.new("pink", "poodle")
dog3 = Dog.new("blue", "german shepard")

dog1.name="blooooo"

puts dog1.speak
puts Dog.dogCount
puts Dog.breeds
Dog.tag