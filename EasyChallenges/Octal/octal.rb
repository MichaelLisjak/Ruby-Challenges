class Octal
  attr_accessor :octal_num

  def initialize(octal_num)
    @octal_num = octal_num  
  end

  def to_decimal
    return 0 unless is_octal_number?
    octal_int_digits = octal_num.to_i.digits
    octal_int_digits.map.with_index do |octal_digit, index|
      octal_digit * 8**index
    end.sum
  end

  private
  def is_octal_number?
    valid_octal_digits = ['0', '1', '2', '3', '4', '5', '6', '7']
    octal_digits = octal_num.chars
    octal_digits.all? { |digit| valid_octal_digits.include?(digit) }        
  end
end

# Problem:
# convert a string that represents an octal integer number into a decimal integer

# Input: string
# Output: Integer

# Algorithm:

# helper method to determine if string is a number is_octal_number?
# return 0 unless is_octal_number?

# convert the given string into an integer
# create a string with each element being a digit from the number, in reverse order, so the first element is the digit with the smallest value 
# (index 0 --> digit * 8**0)
# (index 1 --> digit * 8**1) ...
# multiply each digit with 8 to the power of its index
# sum all digits together
# return that sum


# digits 8 and 9 are invalid!!!

# is_octal_number?
# create an array with strings from '0' to '7' 'octals'
# split up the given string number in its characters
# check if all characters are included in the array 'octals'
# return true is that is the case, false otherwise 
