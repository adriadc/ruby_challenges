#this is an annagram generator
require_relative 'reverse_letters'

#require our reverse_letters method file
#Use the same directory/code structure as you did yesterday — we will reuse our reverse_letters.rb code.



#Create a method called find_anagram.
def find_anagram(word)
  #Make sure that:
  #find_anagram takes a word (string).
  #find_anagram returns an array of strings.
word =0
  word.each_with_index do |word,index|
  word.permutation(3).to_a
word +=1
end
puts word.join('')

end

