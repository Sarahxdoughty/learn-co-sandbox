puts "Would you like to [add], [sub]tract, [mult]iply, [div]ide, [fac]torize, or perform a [pow]er?"
operator = gets.chomp

def add_num (num1, num2)
	return num1+num2
end 

def subtract_num(num1, num2)
	return num1-num2
end 

def divide_num (num, denom)
	return num/denom
end
	

def factorial_num(num)
	numHolder = num
	count = num-1 
	while count>0
		num = num*count
		count-=1
	end
	return num
end 


def power_num(base, power)
	num = base
	count = 1
	while count<power
		base *= num 
		count+=1
	end 
	return base
end

def multiply_num (num1, num2)
	return num1*num2
end 


if operator == "fac"
  puts "What number would you like to factorialise?"
	num = gets.chomp.to_i
	puts factorial_num(num)
	
else 
	puts "What is your first number? (if power, do your base, if dividing do your numerator)"
	num1 = gets.chomp.to_i
	puts "What is your second number?” (if power, do your power, if dividing do your denominator)"
	num2 = gets.chomp.to_i
	if operator == "add"
		puts "YOUR SUM IS :: #{add_num(num1, num2)}"
	elsif operator == "sub"
		puts "YOUR DIFFERENCE IS :: #{subtract_num(num1, num2)}"
	elsif operator == "mult"
		puts "YOUR PRODUCT IS :: #{multiply_num(num1, num2)}"
	elsif operator == "div"
		puts "YOUR DIVIDEND IS :: #{divide_num(num1, num2)}"
	elsif operator == "pow"
		puts "YOUR OUTCOME IS :: #{power_num(num1, num2)}"
	else 
		puts "ERROR:  YOU ENTERED AN INVALID RESPONSE"
	end 
end 

