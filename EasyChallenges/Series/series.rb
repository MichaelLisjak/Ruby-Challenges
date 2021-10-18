class Series
  attr_accessor :array_of_digits

  def initialize(string_of_digits)
    @array_of_digits = string_of_digits.split('').map(&:to_i)
  end

  def slices(cons)
    series = []
    raise ArgumentError if cons > array_of_digits.size

    array_of_digits.each_cons(cons) do |numbers|
      series << numbers
    end
    series
  end
end

#Problem
# return an array of all consecutive number series of a specified length

#Input:
# initialize()
# a string of variable length containing only digits as characters.

# slices()
# an integer

#Output:
# Array with subarrays of the consecutive integer numbers from that string and the given length of the digits row

#Algorithm:

# initialize()
# assign given string to instance variable
# (optional, create digits array of that string)?
# split string into array of single chars
# convert every element of array into integer

# slices()
# initialize empty array 'series'
# raise ArgumentError if given number is greater than array.size
# iterate through digit array with each_cons
  # shuffle return value of each_cons's block into series array
# return series array