class User 
  attr_accessor :password, :username, :display_name, :read, :unread, :score, :story 
  @@login = {}
  @@count = 0
  
  def initialize(username, password, display_name = usernanme)
    @password = password
    @username = username
    @display_name = display_name
    @@login[@username] = [@password, @display_name]
    @notification = 0
    @messages = []
    @read = 0 
    @unread = 0
    @score = 0 
    @snaps = {}
    @story = {}
  end
  
  def self.login 
    @@login.each do |username, password|
      puts "The username is #{username} and your password is #{password[0]}. Your display name is #{password[1]}."
    end
  end
  
  def open_message
    @notification -= 1 
    @read += 1 
    @unread -= 1 
    puts "The message says: #{@messages[0]}"
    if @messages.length != 0
      @messages.delete_at(0)
    end
  end
  
  def new_message
    prng = Random.new
    mess = prng.rand(10)
    if mess == 0 
      @messages << "Haha you're lame"
      @unread += 1
    elsif mess == 1 
     @messages << "streaks"
     @unread += 1
    elsif mess == 2 
      @messages << "send nudes"
      @unread += 1
    elsif mess == 3
      @messages << "11:11 (make a wish)"
      @unread += 1
    elsif mess == 4
      @messages << "10/10 would reccomend"
      @unread += 1
    elsif mess == 5
      @messages << "I woke up like this"
      @unread += 1
    elsif mess == 6 
      @messages <<  "S+R"
      @unread += 1
    elsif mess == 7
      @messages << "S"
      @unread += 1
    elsif mess == 8
      @messages << "*random dog*"
      @unread += 1
    elsif mess == 9 
      @messages << "streaks and recents"
    end
    @notification += 1
    @score = 0 
  end
  
  def send_message(picture, caption = "")
    @score += 1 
    @snaps[picture] = caption
    return "Your message has been sent!"
  end
  
  def make_story(picture, caption)
    @story[picture] = caption
  end
  
  def see_story 
    count = 0
    @story.each do |picture, caption|
      count += 1
      puts "Snap #{count} is a picture of #{picture} with the caption #{caption}. "
    end
  end
  
end
puts "Do you want to create an account? [Y/N]"
user_info = gets.chomp 

if user_info == "Y" || user_info == "y"
  puts "What is your username?"
  username = gets.chomp
  puts "What is your password"
  password = gets.chomp
  puts "Do you want a display name? [Y/N]"
  display = gets.chomp
  
  if display == "Y" || display == "y"
    puts "What is your display name"
    display_name = gets.chomp
  else 
    display_name = username
  end
  
  acc = User.new(username, password, display_name)
  print "Here is your first message:"
  acc.new_message
  acc.open_message
  puts "Would you like to respond? [Y/N]"
  input = gets.chomp 
  
  if input == "Y" || input == "y"
    puts "What are you taking a picture of?"
    picture = gets.chomp
    puts "Are you giving it a caption? [Y/N]" 
    cap_input = gets.chomp
    if cap_input == "Y" || cap_input == "y"
      puts "What will it be?"
      caption = gets.chomp
    else
      caption = ""
    end
  puts acc.send_message(picture, caption)
  end
  puts "Would you like to add to your story? [Y/N]"
  story_input = gets.chomp
  if story_input == "Y" || story_input == "y"
    puts "How many picture do you want to add?"
    story_count = gets.chomp.to_i 
    for x in 1..story_count do
    puts "What picture would you like to add?" 
    story_picture = gets.chomp
    puts "What caption would you like to add?"
    story_caption = gets.chomp 
    acc.make_story(picture, caption)
    end
  end
  puts "Would you like to see your story?"
  see_story = gets.chomp
  if see_story == "Y" || see_story == "y"
    puts acc.story
  end
  puts "Thanks for joining!!"
else 
  puts "Go away"
end 


puts acc.score          #uncomment to see your snapscore 
User.login