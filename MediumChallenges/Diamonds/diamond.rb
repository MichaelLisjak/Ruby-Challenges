class Diamond
  ALPHABET = ('A'..'Z').to_a

  def self.make_diamond(letter)
    max_index = ALPHABET.index(letter)
    diamond = " " * max_index + "A" + " " * max_index + "\n"
    counter = 1
    # upper half of diamond
    0.upto(max_index -1) do |iteration_step|
      diamond << (" " * (max_index - counter))
      diamond << ALPHABET[counter]
      diamond << (" " * (iteration_step + counter))
      diamond << ALPHABET[counter]
      diamond << (" " * (max_index - counter))
      diamond << "\n"
      counter += 1
    end
    counter = (max_index -1)
    # lower half of diamond
    (max_index).downto(2) do |iteration_step|
      diamond << (" " * (max_index - counter))
      diamond << ALPHABET[iteration_step - 1]
      diamond << (" " * (counter * 2 - 1) )
      diamond << ALPHABET[iteration_step - 1]
      diamond << (" " * (max_index - counter))
      diamond << "\n"
      counter -= 1  
    end
    diamond << " " * (max_index) + "A" + " " * max_index + "\n" if max_index > 0
    diamond
  end
end


# Problem: 
# The diamond exercise takes as its input a letter, and outputs it in a diamond shape. Given a letter, it prints a diamond starting with 'A', with the supplied letter at the widest point.

# Rules:

# The first row contains one 'A'.
# The last row contains one 'A'.
# All rows, except the first and last, have exactly two identical letters.
# The diamond is horizontally symmetric.
# The diamond is vertically symmetric.
# The diamond has a square shape (width equals height).
# The letters form a diamond shape.
# The top half has the letters in ascending order.
# The bottom half has the letters in descending order.
# The four corners (containing the spaces) are triangles.

# Input:
# A string with a single uppercase letter

# Output: A string forming a diamond, starting with A and having the input letter as the widest point

# Algorithm:
  # initialize array containing all the uppercase letters of the alphabet (sorted)
  # initialize empty string for diamond
  # determine the size (number of rows to the widest point) of the diamond --> index of letter in array + 1
  # determine the total size (number of all rows for the diamond) --> index of letter in array times 2 minus 1


  # create 2 loops for building the diamond string (upper and lower part of diamond)
  # loop for upper part of diamond: 
  # add letter of current index + \n to the diamond string

  # loop from 0 to index of given letter in array + 1                               
    # initialize counter with 1
    # add whitespace * counter to string                                                                                                                                 
    # add letter with the index of current counter to diamond string                                                                                         
    # add whitespace * (current iteration counter + counter) to diamond string
    # add letter with the index of current counter to diamond string
    # add whitespace * counter to string     
    # add \n to diamond string      
    # increment counter by 1

  # loop from index of given letter in array down to 2
    # initialize counter with 1
    # add letter with the index of current iteration counter - 1 to diamond string
    # add whitespace * (current iteration counter + counter) to diamond string
    # add letter with the index of current iteration counter -1 to diamond string         
    # add \n to diamond string   
    # decrement counter by 1
  # return diamond string

# Algorithm for building the string rows:
# whitespaces for the middle part of the diamond
#     A
#    B B    # 1 -> index 1 : index plus 0 --> current iteration counter(0) + 1
#   C   C   # 3 -> index 2 : index plus 1 --> current iteration counter(1) + 2
#  D     D  # 5 -> index 3 : index plus 2 --> current iteration counter(2) + 3
# E       E # 7 -> index 4 : index plus 3 --> current iteration counter(3) + 4
#  D     D  # 5 -> index 3 : index plus 2 --> current iteration counter(4) + 1
#   C   C   # 3 -> index 2 : index plus 1 --> current iteration counter(3) + 0
#    B B    # 1 -> index 1 : index plus 0 --> current iteration counter(2) - 1 
#     A

# whitespaces for the outer parts of the diamond
#     A     # 4 --> letter index - 0
#    B B    # 3 --> letter index - 1
#   C   C   # 2 --> letter index - 2
#  D     D  # 1 --> letter index - 3
# E       E # 0 --> letter index - 4
#  D     D  # 1 --> letter index - 3
#   C   C   # 2 --> letter index - 2
#    B B    # 3 --> letter index - 1
#     A     # 4 --> letter index - 0
