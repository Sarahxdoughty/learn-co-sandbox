def pizza_order(cheese = 'mozzarella')
  puts "What type of crust would you like: thin or regular?"
  crust = gets.chomp
  puts "What size will the pizza be: small, medium, or large?"
  size = gets.chomp
  puts "What type of pizza sauce would you like: marinara, barbecue, or basil?"
  sauce = gets.chomp
  puts "Would you like any toppings?"
  top_choice = gets.chomp
  if top_choice == "yes"
    puts "What topping would you like?"
    top = gets.chomp
    top_list = []
    while top != 'DONE'
      top_list << top          #.insert(-1, top)
      puts "What other toppings would you like?"
      top = gets.chomp
    end
    print "Your order is a  #{size}, #{crust} crust pizza with #{cheese} cheese and #{sauce} sauce. The toppings are: "
    top_list.each do |top|
      print top + ", "
    end 
  else
    print "Your order is a  #{size}, #{crust} crust pizza with #{cheese} cheese and #{sauce} sauce."
  end
end
pizza_order