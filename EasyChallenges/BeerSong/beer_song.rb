class BeerSong
  LAST_VERSE = "No more bottles of beer on the wall, no more bottles of beer.\n" \
                "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  SECOND_LAST_VERSE = "1 bottle of beer on the wall, 1 bottle of beer.\n" \
                "Take it down and pass it around, no more bottles of beer on the wall.\n"
  TWO_BEERS_LEFT = "2 bottles of beer on the wall, 2 bottles of beer.\n" \
                "Take one down and pass it around, 1 bottle of beer on the wall.\n"

  def self.verse(bottles)
    if bottles == 0
      LAST_VERSE
    elsif bottles == 1
      SECOND_LAST_VERSE
    elsif bottles == 2
      TWO_BEERS_LEFT
    else
      "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n" \
      "Take one down and pass it around, #{bottles - 1} bottles of beer on the wall.\n" \
    end
  end

  def self.verses(first_verse, last_verse)
    bottle_arr = (last_verse..first_verse).to_a.reverse
    verses_str = ""
    bottle_arr.each_with_index do |bottle_nr, index|
      verses_str << verse(bottle_nr)
      verses_str << "\n" unless index == (bottle_arr.size - 1)
    end
    verses_str
  end

  def self.lyrics
    self.verses(99, 0)
  end
end

# Problem:
# return one or multiple verses of the beer song, or the complete song.

# input: 
# verse(): number of the verse (number of bottles)
# verses(): multiple number of the verses that have to be returned
# lyrics(): nothing

# output: 
# string with either the verses or the complete song

# algorithm:
# class:
# 2 constant strings for last and second last verse
# 1 normal string with placeholder for the number of beer bottles --> place in verse method?

# verse(bottles) 
  # if number of bottles = 0
    # return constant string for 0 bottles
  # elsif number of bottles = 1
    # return constant string for 1 bottle
  # else
    # return fixed verse string with the number of bottles added via string concatination

# verses(*bottles)
  # initialize bottle_arr with the bottle arguments that are passed in
  # initialize empty verse string
  # iterate through bottle_arr and pass the current element(no of bottles) into the verse(bottles) method and call it (each_with_index so you know when the last verse is added)
  # add the return value of verse(bottle) to verse string
  # add a new line char to verse string unless its the last verse (index ==  bottle_arr.size - 1)

# lyrics
  # call verses with array from 99..0

# edge cases:
  # all verses have the same structure, except for the last and the second last
  # therefore basically 3 structures of verses exist:

  # X bottles of beer on the wall, X bottles of beer.
  # Take one down and pass it around, (X - 1) bottles of beer on the wall.

  # 1 bottle of beer on the wall, 1 bottle of beer.
  # Take it down and pass it around, no more bottles of beer on the wall.

  # No more bottles of beer on the wall, no more bottles of beer.
  # Go to the store and buy some more, 99 bottles of beer on the wall.