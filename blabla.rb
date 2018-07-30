# def firstReverse(str = "bla")
#   return str.reverse 
# end

# puts firstReverse("Wow I love eating food!")
# puts firstReverse

# def addNums (num = 1000)
#   count = 1;
#   sum = 0;
#   while count<num+1
#     sum += count
#     count+=1 
#   end
#   return sum
# end

# puts addNums(5)
# puts addNums

# def checkNums(n1, n2)
#   if n1 < n2 
#     return "false"
#   elsif n1 > n2
#     return "true"
#   else 
#     return "-1"
#   end
# end 

# checkNums (2, 3)
# checkNums(3, 2)
# checkNums(3, 3)

def timeConvert (minutes)
  min = minutes%60
  hours = minutes/60
  return "#{hours}:#{min}"
end

puts timeConvert(63)