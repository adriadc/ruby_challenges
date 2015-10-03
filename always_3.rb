puts "Give me a number:"
number_one = gets.to_i
number_too = number_one + 5
number_too *= 2
number_too -= 4
number_too /= 2
number_too -= number_one
puts "Always #{number_too}"