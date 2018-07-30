amazon = {:BreakfastInACan => "27.29", :WhySocialismWorks => "9.49", :NoseCleansingBrush => "99", :TheGiftOfNothing => "11.99", :BodyFatFridgeMagnet => "8.54"}
#key is before rocket, value is after rocket

count = 0 
amazon.each do |object, price|
  puts "Happy Holidays! You have received a #{object} that cost $#{price}"
  count+=1 
end 

