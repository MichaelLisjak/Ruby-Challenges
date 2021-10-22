class Clock
  attr_accessor :hours, :minutes

  def initialize(hours, minutes: 0)
    @hours = hours
    @minutes = minutes    
  end

  def self.at(hours, minutes = 0)
    Clock.new(hours, minutes: minutes)
  end

  def to_s
    sprintf("%2.2i", hours) + ":" + sprintf("%2.2i", minutes)
  end

  def +(add_minutes)
    hr_div, min_div = div_time(add_minutes)
    if (hr_div + hours) > 23
      self.hours = (hr_div + hours) % 24
    else
      self.hours += hr_div
    end
    if (min_div + minutes) > 59
      self.minutes = ((minutes + min_div) % 60)
      self.hours += 1
      if hours > 23
        self.hours = 0
      end
    else
      self.minutes += min_div
    end
    self
  end

  def ==(other)
    self.to_s == other.to_s
  end

  private

  def div_time(calc_minutes)
    div = calc_minutes.divmod(60)
    div[0] = div[0] % 24
    div
  end
end

# Problem: 

# Create a clock that is independent of date.
# You should be able to add minutes to and subtract minutes from the time represented by a given clock object. Two clock objects that represent the same time should be equal to each other.
# You may not use any built-in date or time functionality; just use arithmetic operations.

# input:
# self.at():
  # either one or two integers. 
  # one integer --> hours. Minutes will be set to 0 by default
  # two integer --> hours and minutes

# initialize():
  # either one or two integers. 
  # one integer --> hours. Minutes will be set to 0 by default
  # two integer --> hours and minutes

# to_s:
  # nothing

# -():
# +():
  # integer representing minutes

# ==()
  # other clock object

# output:
# self.at():
  # a Clock object

# initialize():
  # a Clock object

# to_s:
  # string representation of time 'hh:mm

# -():
# +():
  # the modified Clock object 

# ==()
  # boolean

# Algorithm:

# initialize():
  # assigns given arguments to @hours and @minutes instance variables
  # default @minutes to 0 if not passed in explicitly

# self.at():
  # create a new Clock object by calling the initialize method and passing the given arguments into it
  # return the Clock object

# to_s:
  # use string concatination to add hours and minutes together to a string in the form of 'hh:mm'

# div_time(calc_minutes):
  # create array of hr_div and min_div
  # use divmod to calculate the difference of hrs and minutes
  # hr_div % 24
  # return array 

# +():
  # call div_time and assign return value to hr_div and min_div variable
  # if (hr_div + @hours) > 23
    # hours = (hr_div + @hours) % 24
  # else
    # @hours += hr_div

  # if (min_div + @minutes) > 59
    # @minutes = (@minutes + min_div) % 60
    # @hours += 1
    # what if hours > 23 here after += 1????
      # if @hours > 23
        # hours = 0
  # else
    # add min_div to @minutes

# -():
  # call div_time and assign return value to hr_div and min_div variable
  # if (@hours - hr_div) < 0
    # @hours = hr_div - 1
  # else
    # @hours -= hr_div
   
  # if min_div > @minutes
    # @minutes = 60 - min_div
    # @hours -= 1
    # @hours = @hours - hr_div
    # if @hours < 0 
      # @hours = 24 - @hours
  # else
    # @minutes - min_div

# ==(other):
  # self.to_s == other.to_s
    