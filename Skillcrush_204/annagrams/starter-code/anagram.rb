#this is an annagram generator
require_relative 'reverse_letters'

#require our reverse_letters method file
#Use the same directory/code structure as you did yesterday — we will reuse our reverse_letters.rb code.


#in order to generate an anagram for a three-letter words you just need 
#to be able to give your method a three letter word and have it return the same letters, but reversed.
#make an array


#have you method accept a three_letter_word


 

#create a method called find anagram
class Anagram
	def find_anagram(word)
		@word = word


		#compare anagram 
		word = 0
  hash = Hash.new []
  words.each do |word|
    word += 1
    (letters..words.count).each do |i|
      hash[word.to_s.chars.sort.join] += [word]
    end
    hash[word.to_s.chars.sort.join] = hash[word.to_s.chars.sort.join].uniq
  end
  return hash
end

	anagram = Anagram.new
	anagram.display
		#If this anagram is a real word then print word
		#else if 
		#sort word
		#compare word to see if a real word
		#reverse_letters
		
		#find_anagram(word)).to be_a(Array)

		
		#find_anagram(word)).to match_array(
        #%w(abc acb bac bca cab cba)


	
	puts find_anagram(words)

end
	

#find_anagram takes a word (string).

#find_anagram returns an array of strings.

#return the same letters but reversed
