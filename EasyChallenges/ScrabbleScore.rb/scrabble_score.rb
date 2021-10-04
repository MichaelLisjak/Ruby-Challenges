class Scrabble
  attr_reader :word
  VALUES = { 1 => %w(a e i o u l n r s t), 2 => %w(d g), 3 => %w(b c m p),
             4 => %w(f h v w y), 5 => %w(k), 8 => %w(j x), 10 => %w(q z) }

  def initialize(word)
    @word = word ? word : ''
  end

  def self.score(word)
    Scrabble.new(word).score
  end
  def score
    score_value = 0
    letters = word.downcase.split('')
    letters.each do |letter|
      VALUES.each do |value, chars|
        score_value += value if chars.include?(letter)
      end
    end
    score_value
  end
end

=begin
input: word as a string
output: integer value of the word.

scores hash: key = integer value, value = array of letters with that value
score:
  - create variable 'score_value'
  - split the word up into array of lowercase letters
  - iterate through that array
    - iterate through hash
      - if current letter is included in the value array of the key-value pair, add key to score_value and continue 
  - return 

=end