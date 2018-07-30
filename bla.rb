t = Time.now.hour
t = t-7
if t >= 7 && t < 11
  puts "Good Morning"

elsif t>= 11 && t< 17
  puts "Good Afternoon"

else 
  puts "Good Evening"
end

