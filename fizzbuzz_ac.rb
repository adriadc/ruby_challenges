#start number variable with a zero count 
number = 0
#type of loop is a while loop. Write number up to 100
while number < 101
#write each conditional
#Use logic and do the math for remainder multiples of 3 and 5 write FizzBuzz
if number %3 == 0 && number %5 == 0
	puts "FizzBuzz"
#Multiples of three write Fizz
elsif number %3 == 0
	puts "Fizz"
#Multiples of five write Buzz
elsif number %5 == 0
	puts "Buzz"
else
#write out the number
	puts number
end
#count the number to make it one more each time. This is so important.
	number += 1
end
