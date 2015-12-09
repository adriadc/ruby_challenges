

#in order to generate an anagram for a two-letter words you just need 
#to be able to give your method a two letter word and have it return the same letters, but reversed.
#make an array
array = ["a","b"]

def reverse_letters(array)
	return array
  
end
#should take an array of 2 letters.
	puts array.join(", ")

array.each_with_index 
#reverse the array
reverse_letters = array.reverse

 
 #return an array of 2 letters.
 	puts reverse_letters.join(", ")


