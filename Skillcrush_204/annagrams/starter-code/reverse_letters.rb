

#in order to generate an anagram for a two-letter words you just need 
#to be able to give your method a two letter word and have it return the same letters, but reversed.
#make an array
def reverse_letters (strings)
#create an array with 2 letters
	array = strings.length
	strings = Array.new(2)

#Loop/reverse letters in the array
	array.each_with_index do |strings, index|
	reverse_letters[length - index - 1] = array	
  
end
#return an array of 2 letters.
	reverse_letters
 	

end
#puts reversed_letters