def num_method
	puts "Give me a number:"
	num = gets.to_i
	puts 'Always' + (((num + 5) * 2 - 4) / 2 - num).to_s
end


num_method
