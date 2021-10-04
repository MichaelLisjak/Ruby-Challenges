class Anagram
  attr_reader :word
  attr_accessor :all_chars

  def initialize(word)
    @word = word
    @all_chars = word.split('').sort
  end

  def match(list)
    anagrams = []
    sorted_word = word.downcase.split('').sort
    list.each do |current_word|
      if current_word.downcase.split('').sort == sorted_word && current_word.downcase != word.downcase
        anagrams << current_word
      end
    end
    anagrams
  end
end

# ana = Anagram.new('testword')

# # ana.all_anagrams_of_word
# p ana.all_chars

=begin
data: - Anagram has a word as an instance variable of type string
      - match method of Anagram takes an array of strings and returns an array of those strings which are an anagram of the word
rules:
      - return array of match method contains all anagrams of the Anagram word
      - array does not include the word itself if it is included in the argument of match
      - anagrams are case insensitive


algorithm:
- initialize:
  - assigns argument to instance variable 'word'
- match:
 - initialize 'anagrams' with []
 - iterate through array of words
 - if current word of array != @word AND word.split('').downcase.sort == @word.split('').downcase.sort
  - add word to anagram array
 - return 'anagrams' 


=end
