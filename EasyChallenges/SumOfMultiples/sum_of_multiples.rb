class SumOfMultiples
  attr_accessor :numbers

  def initialize(*numbers)
    @numbers = numbers
  end

  def self.to(max_num)
    numbers = [3, 5]
    multiples = []
    numbers.each do |current_num|
      counter = 1
      until counter * current_num > (max_num - 1) do
        multiples << (counter * current_num)
        counter += 1
      end
    end
    multiples.uniq.sum
  end

  def to(max_num)
    multiples = []
    numbers.each do |current_num|
      counter = 1
      until counter * current_num > (max_num - 1) do
        multiples << (counter * current_num)
        counter += 1
      end
    end
    multiples.uniq.sum
  end
end

# Problem:
# from a given set of numbers, find the sum of all multiples of these numbers up to one less than another given number
# if no set of numbers is given, use 3 and 5 as default

# Input:
# set of integer numbers(optional), and one additional integer number

# Output: 
# one integer number

# Algorithm:
# initialize:
  # save the given set of numbers into an array

# self.to:
  # initialize array with integer values of 3 and 5
  # initialize empty array for multiples
  # find all multiples of these number up to given number - 1
    # iterate through array with 3 and 5
      # initialize counter with 1
      # until counter times current number is greater than given number -1 --> add counter times current number to multiples array
  # sum up all the numbers in multiple array and return it