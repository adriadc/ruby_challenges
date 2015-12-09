
puts "Give me a number:"

number_one = gets.to_i

number_too = number_one + 5 
number_too *= 2
number_too -= 4
number_too /= 2

final_number = number_too - number_one

puts "Always #{final_number}"