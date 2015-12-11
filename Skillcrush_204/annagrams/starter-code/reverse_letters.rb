

#in order to generate an anagram for a two-letter words you just need 
#to be able to give your method a two letter word and have it return the same letters, but reversed.
#make an array
letters = ["a","b"]
puts letters.join(", ")
def reverse_letters(letters)
#create an array with 2 letters
	long = letters.length
  reversed = Array.new(long)

#Loop/reverse letters in the array

letters.each_with_index do |letter, index| 
    reversed[long - index - 1] = letter
  end
#return an array of 2 letters.
reversed
end
puts #{letter}.join(", ") 