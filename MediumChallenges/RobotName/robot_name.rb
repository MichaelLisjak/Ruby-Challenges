class Robot
  attr_accessor :name

  ALPHABET = ('A'..'Z').to_a
  DIGITS = ('0'..'9').to_a
  @@name_list = []

  def initialize
    reset
  end

  def reset
    @@name_list.delete(name)
    self.name = generate_name
    @@name_list.push(name)
  end

  private

  def generate_name
    temp_name = ''
    loop do
      2.times { temp_name << ALPHABET.sample }
      3.times { temp_name << DIGITS.sample }
      break unless @@name_list.include?(temp_name)
      temp_name = ''
    end
    temp_name
  end
end

# Problem:
 # A newly produced robot has no name. At first boot-up a random name is generated with 2 alphabetic letters followed by 3 digits. They are random
 # Robot can be reseted which deletes their name and they get a new one
 # Every name is unique, no two robots are allowed to have the same name


 # constants:
  # alphabet array from A-Z
  # digit array from 0-9

 # class variables: 
  # name_list

 # methods:
  # initialize
    # initialize '@name' with empty string
    # assigns a random name to an instance variable 'name' (call reset)
    

  # reset 
    # create temp_name variable
    # check if current @name exists in global name list
      # if so, delete it
    # loop do
      # create a random name with the following format letter/letter/digit/digit/digit
        # 2 times
          # add random letter from alphabet array to temp_name
        # 3 times 
          # add random letter from digits array to temp_name
      # break unless that name already exists in global name list

    # assign temp_name to @name
    # add that name to a global list of existing names for prevention of same name robots

  # name
    # returns the name that has been assigned to the robot object
