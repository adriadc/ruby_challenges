#http://stackoverflow.com/questions/7167634/ruby-anagram-solver
#modify

require_relative 'reverse_letters'

def anagrams(word)
  output_array = Array.new(0)
  word.each do |w1|
    temp_array = []
    word.each do |w2|
      if (w2.downcase.split(//).sort == w1.downcase.split(//).sort)
        temp_array.push(w2)
      end
    end
    output_array.push(temp_array)
  end
  return output_array.uniq
end

anagrams(word)



a = ['lemon', 'orange', 'cucumber']
anagrams(a)

[lemon, orange, cucumber]



index = 0
result = []

a.each_with_index do |i, v|
  result < [a[i], a[i+1], a[i+2]]
  result < [a[i], a[i+2], a[i+1]] 
end
