# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

#i > 0 yes then return hash
#keys are odd number up to it
#value are even nums up to key

def staircase int
  result = Hash.new
  1.upto(int) do |i|
    even = []
      1.upto(i) {|x| even << x if x.even?}#create an array of evens
    if i.odd?
      result[i] = even#if the current number is odd set it as the key and set the value as the even array.
    end
  end
  result
end

