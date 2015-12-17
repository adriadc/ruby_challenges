#this is an annagram generator
require_relative 'reverse_letters'

#require our reverse_letters method
#Use the same directory/code structure as you did yesterday — we will reuse our reverse_letters.rb code.


#in order to generate an anagram for a three-letter words you just need 
#to be able to give your method a three letter word and have it return the same letters, but reversed.
#make an array
letters = ["abc"]

puts letters

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

puts reverse_letters(letters)

#require our reverse_letters method
#Use the same directory/code structure as you did yesterday — we will reuse our reverse_letters.rb code.

#create a method called find anagram
def find_anagram(word)
anagram = words.each_with_object(Hash.new []) do |word, hash|
  hash[word.chars.sort] += [word]
end
	

#find_anagram takes a word (string).
#find_anagram returns an array of strings.

end


