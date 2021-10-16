class PerfectNumber
  def self.classify(number)
    raise StandardError unless number >= 0
    divisors = []
    1.upto(number - 1) do |current_number|
      divisors << current_number if number % current_number == 0
    end
    sum = divisors.sum
    return 'perfect' if sum == number
    return 'deficient' if sum < number
    return 'abundant' if sum > number
  end
end

# Problem:
# For a given number, find out if it is a perfect, deficient or abundant number
# perfect: sum of all divisors are equal to number
# deficient: sum of all divisors is lower than the number
# abundant: sum of all divisors is higher than the number

# input: integer
# output: string. Either 'perfect', 'deficient' or 'abundant'

# algo:
# raise StandardError unless number >= 0
# find all the divisors of the given number
  # create empty array for divisors
  # iterate from 1 to number - 1 and calculate the modulo value of the current number with the given number
  # if mod result == 0 --> add current number to array

# build the sum of all the divisors and compare it to the original number

# return a string depending on if the sum is equal, greater or less than the number
# if the sum is equal the number --> return 'perfect'
# if sum is less than the number --> return 'deficient'
# if sum is greater than the number --> return 'abundant'



