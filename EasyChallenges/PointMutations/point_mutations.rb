class DNA
  attr_reader :strand
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(compare_strand)
    hamming_dist = 0
    length = [strand.length, compare_strand.length].min
    length.times do |index|
      hamming_dist += 1 if strand.chars[index] != compare_strand.chars[index] 
    end
    hamming_dist
  end
end



=begin
Problem:
calculate the hamming distance, which is the number of point mutations between two DNA strands

Notes:
The Hamming distance is only defined for sequences of equal length. If you have two sequences of unequal length, you should compute the Hamming distance over the shorter length.

Data:
Instance of DNA class
  has strand as a state

  initialize(): initializes DNA object with a strand
  hamming_distance(): takes string of DNA strand as argument
                      returns integer value od hamming distance

Algorithm:
initialize():
  assign a string value to state strand

hamming_distance():
  - take other strand for comparision as argument
  - create hamming_dist variable to count the differences
  - split both, dna strand an compare strand into array of chars
  - determine which is the shorter string, if they have different lengths
  - iterate through the shorter string and compare every element with the element of the longer string at the same array index
    - if the elements are different, increment hamming_dist by 1
  - return hamming_dist

=end