orders = {"Kelly" => ["Vanilla Latte", "Caramel Macchiato", "Hot Chocolate"], "Bob" => ["Black Coffee", "Vanilla Frappe", "Cup Of Whipped  Cream"], "Sally" => ["Green Tea Frappe", "Cappuccino", "Americano"]}
puts "What is your name?" 
name = gets.chomp.capitalize
puts "How many items do you want?" 
items = Array.new(gets.chomp.to_i)
for num in 0..items.length-1 do
  puts "What is your order?"
  items[num] = gets.chomp
end
orders[name]=items
count = 0 
orders.each do |name, order|
  count+=1 
  puts "Person #{count} is #{name} and they ordered a #{order.join(" and a ")}."
end 