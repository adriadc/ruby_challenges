#add parenthesis after your first method name
def num_method (num)
#do all of the facy math with the argument	
	(((num + 5) * 2 - 4) / 2 - num)
end
#Move the first puts and gets outside of the method
puts "Give me a number:"
num = gets.to_i

#Call your method and turn your number into a string

puts 'Always ' + num_method(num).to_s