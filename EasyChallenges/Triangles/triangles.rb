class Triangle
  attr_reader :sides
  def initialize(a, b, c)
    @sides = [a, b, c]
    raise ArgumentError.new("Invalid triangle lengths") unless is_valid?
  end

  def kind
    #returns a string with either 'equilateral', 'isosceles' or 'scalene'
    if sides.uniq.size == 1
      'equilateral'
    elsif sides.uniq.size == 2
      'isosceles'
    else
      'scalene'
    end
  end

  private
    def is_valid?
      sides.min > 0 &&
      sides[0] + sides[1] > sides[2] &&
      sides[0] + sides[2] > sides[1] &&
      sides[1] + sides[2] > sides[0]
    end
end

=begin
Problem:
A triangle object should be identified as either 'equilateral', 'isosceles' or 'scalene', depending on the length of their sides

An equilateral triangle has all three sides the same length.
An isosceles triangle has exactly two sides of the same length.
A scalene triangle has all sides of different lengths.

Any two sides of the triangle must always be greater than the third
no side can be zero



Input/output:
the object will be of the class Triangle, and the instance method 'kind' is returning the type of triangle

Data:
input of lengths a, b, c will be of type integer or float
output will the one of the 3 strings 'equilateral', 'isosceles' or 'scalene'




=end