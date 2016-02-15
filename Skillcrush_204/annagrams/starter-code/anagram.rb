require_relative 'reverse_letters'

#make a method to use with "reverse_letters.rb"

  def find_anagram(letters)
  
    #define length of word
    long = letters.length

    # Convert word to an array of letters
    letters = letters.split('')
 
    # Create a blank array to store our anagrams
    anagram = []
 
    # Loop through each letter in letters
    letters.each_with_index do |letter, index|

      # Select the remaining letters
      remainder = letters.select { |l| l != letter }
 
      # Create a new word by combining the letter + the remaining letters
      # Add new word to anagrams array

      anagram << letter + remainder.join('')
 
      # Create a new word by combining the letter + the reverse of the remaining letters
      # Add new word to anagrams array

      anagram << letter + reverse_letters(remainder).join('')
    end
 
    # Return anagrams array
    anagram 
  end




