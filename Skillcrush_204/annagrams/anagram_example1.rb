#!/usr/bin/env ruby

# usage:
# ruby generate.rb phrase wordfile
#
# example:
# ruby generate.rb "be a mean cat" words.txt
# => a act be name
# => a be cat name
# => a act bee man
# => a bee cat man

class AnagramGenerator
  def initialize(words, phrase)
    @words = words.group_by { |w| normalize(w).length }
    @phrase = normalize(phrase)
  end

  # returns a string with only alpha characters (no spaces or symbols)
  def normalize(text)
    text.downcase.scan(/[a-z]/).join
  end

  # removes each character (individually) of a word and returns the remaining phrase
  # returns nil if all characters were not found
  def remove_word(word, phrase)
    phrase.chars.to_a.tap do |chars|
      word.chars.each do |char|
        if index = chars.index(char)
          chars.delete_at(index)
        else
          return nil
        end
      end
    end.join
  end

  # recursively searches for matching words in the phrase
  def anagrams(phrase=nil)
    phrase ||= @phrase
    return [[]] if phrase.empty?
    all = []
    (1..phrase.length).each do |length|
      ph = phrase.dup
      Array(@words[length]).each do |word|
        normal = normalize(word)
        if phrase_without_word = remove_word(normal, ph)
          anagrams(phrase_without_word).each do |set|
            all << ([word] + set).sort
          end
        end
      end
    end
    all.uniq
  end
end

if $0 == __FILE__
  words = File.read(ARGV[1]).split(/\r?\n/)
  puts AnagramGenerator.new(words, ARGV[0]).anagrams.map { |p| p.join(' ') }
end