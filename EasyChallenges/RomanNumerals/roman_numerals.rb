class RomanNumeral

  ROMAN_NUMERALS = {
    'M' => 1000,
    'CM' => 900,
    'D' => 500,
    'CD' => 400,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }
  attr_reader :decimal_number
  def initialize(number)
    @decimal_number = number
  end

  def to_roman
    roman_num = []
    decimal_digits = create_decimal_digits
    decimal_digits.each do |digit|
      until digit == 0 do
        ROMAN_NUMERALS.values.each do |num|
          if digit - num >= 0
            roman_num << ROMAN_NUMERALS.key(num)
            digit -= num
            break
          end
        end
      end
    end
    roman_num.join
  end

  def create_decimal_digits
    digits = decimal_number.digits
    multiplier = 1
    digits.map! do |digit|
      digit *= multiplier
      multiplier *= 10
      digit
    end
    digits.reverse
  end
end

=begin
  
Problem:
Convert a decimal number into a roman numeral

data:
  initialize:
    - assign argument to the instance variable @decimal_number
  to_roman:
    - converts @decimal_number to roman numeral and returns it(string)
  thousands:
  hundreds:
  tens:
  ones:

algo:
  - initialize empty array for roman numeral roman_num
  - separate the decimal number into its 1000, 100, 10, and 1 decimal places and save it to an array (example: 1987 -> [1000, 900, 80, 7] ) decimal_digits
    - decimal.digits --> array in reverse order
    - initialize multiplier variable with 1
    - decimal_digits = decimal.digits.map do 
      - digit * multiplier
      - multiplier * 10
    - decimal_digits.reverse

  - iterate through the array and create the corresponding roman numeral for that number and add it to roman_num
      - loop until element == 0
        - iterate through ROMAN_NUM.values
          - if element - current value >= 0
            - add key to roman_num array
            - break
          - else break
    
  - return roman_num.join
=end