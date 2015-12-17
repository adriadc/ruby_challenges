#in order to generate an anagram for a three-letter words you just need 
#to be able to give your method a three letter word and have it return the same letters, but reversed.
#make an array
letters = ["a","b","c"]

puts letters.join

def reverse_letters(letters)

#create an array with 3 letters
	long = letters.length
  reversed = Array.new(long)

#Loop/reverse letters in the array

letters.each_with_index do |letter, index| 
    reversed[long - index - 1] = letter
  end
#return an array of 3 letters.
reversed
end
puts reverse_letters(letters).join